"""
Pockie Pirates server emulator -- v4.

Adds proper handling of:
  * AMF0 strict-array body wrapping (the actual wire format Flex sends)
  * kebab-case service destinations (login-service etc.)
  * non-null result bodies for unhandled methods (so the client doesn't
    crash with TypeError #1009 when it dereferences e.result.error_code)
  * full character-creation bundle so DataManager.onLogin can run all
    its resolve* methods after the new player hits Start.
"""
import json
import mimetypes
import os
import sys
import time
import uuid
from datetime import datetime
from http.server import HTTPServer, BaseHTTPRequestHandler

from amf_packet import parse_packet, build_packet
import handlers as h


SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
DATA_DIR = os.path.join(SCRIPT_DIR, '..', 'data')
LOG_DIR = os.path.join(SCRIPT_DIR, '..', 'logs')
os.makedirs(LOG_DIR, exist_ok=True)


def _find_client_root():
    candidates = [
        os.path.join(SCRIPT_DIR, '..', '..'),
        os.path.join(SCRIPT_DIR, '..', '..', 'pockiepirates'),
        os.path.join(SCRIPT_DIR, '..', '..', '..', 'pockiepirates'),
    ]
    for c in candidates:
        if os.path.exists(os.path.join(c, 'onepiece', 'main.swf')):
            return os.path.abspath(c)
    return None


CLIENT_ROOT = _find_client_root()
if CLIENT_ROOT:
    print(f"[init] Static file root: {CLIENT_ROOT}")
else:
    print(f"[init] WARNING: could not find pockiepirates folder. "
          f"Searched relative to {SCRIPT_DIR}.")


# ------------------------------------------------------------------
# Logging
# ------------------------------------------------------------------
SESSION_TS = datetime.now().strftime('%Y%m%d_%H%M%S')
TRANSCRIPT_LOG = os.path.join(LOG_DIR, f'transcript_{SESSION_TS}.jsonl')
UNHANDLED_LOG = os.path.join(LOG_DIR, f'unhandled_{SESSION_TS}.txt')


def log_event(event_type, payload):
    try:
        with open(TRANSCRIPT_LOG, 'a', encoding='utf-8') as f:
            line = {'t': time.time(), 'type': event_type, **payload}
            f.write(json.dumps(line, ensure_ascii=False, default=str) + '\n')
    except Exception:
        pass


def log_unhandled(destination, operation, body):
    try:
        with open(UNHANDLED_LOG, 'a', encoding='utf-8') as f:
            f.write(f'\n=== {datetime.now().isoformat()} ===\n')
            f.write(f'destination: {destination!r}\n')
            f.write(f'operation:   {operation!r}\n')
            f.write(f'body:        {json.dumps(body, ensure_ascii=False, default=str)[:2000]}\n')
    except Exception:
        pass


# ------------------------------------------------------------------
# Game data tables (loaded once at startup)
# ------------------------------------------------------------------
def load_game_data():
    tables = {}
    if not os.path.exists(DATA_DIR):
        return tables
    for fname in os.listdir(DATA_DIR):
        if fname.endswith('.json') and fname != 'gameData.json':
            with open(os.path.join(DATA_DIR, fname), encoding='utf-8') as f:
                tables[fname[:-5]] = json.load(f)
    return tables


GAME_DATA = load_game_data()
print(f"[init] Loaded {len(GAME_DATA)} game data tables, "
      f"{sum(len(t) for t in GAME_DATA.values() if isinstance(t, list)):,} records")


# ------------------------------------------------------------------
# AMF response builders
# ------------------------------------------------------------------
def make_acknowledge(correlation_id, body):
    return {
        '__class__': 'flex.messaging.messages.AcknowledgeMessage',
        'messageId': str(uuid.uuid4()),
        'correlationId': correlation_id,
        'timestamp': int(time.time() * 1000),
        'timeToLive': 0, 'destination': '',
        'clientId': 'pockie-emu', 'headers': {}, 'body': body,
    }


def make_error(correlation_id, fault_code, message):
    return {
        '__class__': 'flex.messaging.messages.ErrorMessage',
        'messageId': str(uuid.uuid4()), 'correlationId': correlation_id,
        'timestamp': int(time.time() * 1000),
        'destination': '', 'clientId': 'pockie-emu',
        'headers': {}, 'body': None,
        'faultCode': fault_code, 'faultString': message,
        'faultDetail': '', 'rootCause': None, 'extendedData': None,
    }


# ------------------------------------------------------------------
# AMF dispatch
# ------------------------------------------------------------------
SERVER_CLIENT_ID = 'pockie-emu-' + str(uuid.uuid4())[:8]


def make_handshake_ack(msg_id):
    return {
        '__class__': 'flex.messaging.messages.AcknowledgeMessage',
        'messageId': str(uuid.uuid4()),
        'correlationId': msg_id,
        'timestamp': int(time.time() * 1000),
        'timeToLive': 0,
        'destination': '',
        'clientId': SERVER_CLIENT_ID,
        'headers': {
            'DSMessagingVersion': 1,
            'DSId': SERVER_CLIENT_ID,
        },
        'body': SERVER_CLIENT_ID,
    }


def handle_command_message(msg):
    op = msg.get('operation')
    msg_id = msg.get('messageId', '')
    if op == 5:
        return make_handshake_ack(msg_id)
    if op == 8:
        return make_acknowledge(msg_id, 'success')
    return make_acknowledge(msg_id, {'error_code': -1})


def handle_remoting_message(msg):
    destination = msg.get('destination', '') or ''
    operation = msg.get('operation', '') or ''
    body = msg.get('body', [])
    msg_id = msg.get('messageId', '')

    handler = (h.HANDLERS.get((destination, operation))
               or h.HANDLERS.get((destination, None)))
    if handler:
        try:
            result = handler(body)
            log_event('handled',
                      {'dest': destination, 'op': operation, 'args': body})
            return make_acknowledge(msg_id, result)
        except Exception as e:
            import traceback; traceback.print_exc()
            return make_error(msg_id, 'Server.Handler.Error', str(e))
    log_event('unhandled',
              {'dest': destination, 'op': operation, 'args': body})
    log_unhandled(destination, operation, body)
    print(f"  [!] UNHANDLED: {destination}.{operation}")
    # Return {error_code: -1} so the client doesn't crash when it
    # dereferences e.result.error_code on an unimplemented call.
    return make_acknowledge(msg_id, {'error_code': -1})


def process_message(msg):
    if not isinstance(msg, dict): return None
    cls = msg.get('__class__', '')
    if 'CommandMessage' in cls: return handle_command_message(msg)
    if 'RemotingMessage' in cls: return handle_remoting_message(msg)
    return make_acknowledge(msg.get('messageId', ''), {'error_code': -1})


# ------------------------------------------------------------------
# HTTP request handler
# ------------------------------------------------------------------
mimetypes.add_type('application/x-shockwave-flash', '.swf')
mimetypes.add_type('application/octet-stream', '.sg')
mimetypes.add_type('application/octet-stream', '.tpd')
mimetypes.add_type('application/octet-stream', '.tpi')
mimetypes.add_type('application/octet-stream', '.ani')
mimetypes.add_type('application/octet-stream', '.wdb')
mimetypes.add_type('application/octet-stream', '.tpr')


class AMFHandler(BaseHTTPRequestHandler):

    def do_OPTIONS(self):
        self.send_response(204)
        self.send_header('Access-Control-Allow-Origin', '*')
        self.send_header('Access-Control-Allow-Methods', 'POST, GET, OPTIONS')
        self.send_header('Access-Control-Allow-Headers', '*')
        self.send_header('Access-Control-Max-Age', '3600')
        self.end_headers()

    def do_POST(self):
        try:
            self._do_POST_inner()
        except (ConnectionAbortedError, ConnectionResetError, BrokenPipeError) as e:
            print(f'  (client disconnected during POST: {type(e).__name__})')

    def _do_POST_inner(self):
        length = int(self.headers.get('Content-Length', 0))
        data = self.rfile.read(length)
        print(f'\n=== POST {self.path}  ({length} bytes) ===')
        print(f'  request hex (first 256): {data[:256].hex()}')
        try:
            packet = parse_packet(data)
            print(f'  decoded: version=0x{packet["version"]:04x}, '
                  f'headers={len(packet["headers"])}, bodies={len(packet["bodies"])}')
            for i, body in enumerate(packet['bodies']):
                print(f'  body[{i}]: target={body["target"]!r}, '
                      f'response={body["response"]!r}')
                msg = body['value']
                if isinstance(msg, dict):
                    cls = msg.get('__class__', 'Object')
                    print(f'    msg class: {cls}')
                    print(f'    operation: {msg.get("operation")}, '
                          f'destination: {msg.get("destination")!r}')
                    print(f'    messageId: {msg.get("messageId")!r}, '
                          f'correlationId: {msg.get("correlationId")!r}')
                    if msg.get('headers'):
                        print(f'    headers: {msg.get("headers")}')
                    if msg.get('body') is not None:
                        body_str = json.dumps(msg.get('body'), default=str)[:200]
                        print(f'    body: {body_str}')
            log_event('packet_in',
                      {'path': self.path,
                       'bodies': len(packet['bodies']),
                       'parsed': str(packet)[:5000]})
            response_bodies = []
            for body in packet['bodies']:
                response_uri = body['response']
                msg = body['value']
                resp_value = process_message(msg)
                response_bodies.append({
                    'target': f'{response_uri}/onResult'
                              if response_uri else '/1/onResult',
                    'response': '', 'value': resp_value,
                })
            response = build_packet(response_bodies)
            print(f'  response total: {len(response)} bytes')
            log_event('packet_out',
                      {'response_hex': response[:1024].hex(),
                       'response_size': len(response)})
            self.send_response(200)
            self.send_header('Content-Type', 'application/x-amf')
            self.send_header('Access-Control-Allow-Origin', '*')
            self.send_header('Content-Length', str(len(response)))
            self.end_headers()
            self.wfile.write(response)
        except Exception as e:
            import traceback; traceback.print_exc()
            log_event('error', {'error': str(e)})
            self.send_response(500); self.end_headers()

    def do_GET(self):
        try:
            self._do_GET_inner()
        except (ConnectionAbortedError, ConnectionResetError, BrokenPipeError) as e:
            print(f'  (client disconnected: {type(e).__name__})')

    def _do_GET_inner(self):
        if self.path in ('/crossdomain.xml', '/policy.xml'):
            body = (b'<?xml version="1.0"?>'
                    b'<cross-domain-policy>'
                    b'<site-control permitted-cross-domain-policies="all"/>'
                    b'<allow-access-from domain="*" to-ports="*" secure="false"/>'
                    b'<allow-http-request-headers-from domain="*" headers="*"/>'
                    b'</cross-domain-policy>')
            self.send_response(200)
            self.send_header('Content-Type', 'text/xml')
            self.send_header('Access-Control-Allow-Origin', '*')
            self.send_header('Content-Length', str(len(body)))
            self.end_headers()
            self.wfile.write(body)
            return
        if self.path == '/' or self.path == '/status':
            body = (f'Pockie Pirates emulator running.\n'
                    f'Tables loaded: {len(GAME_DATA)}\n'
                    f'Handlers registered: {len(h.HANDLERS)}\n'
                    f'Players in memory: {len(h.PLAYERS)}\n'
                    f'Static root: {CLIENT_ROOT or "(disabled)"}\n'
                    f'Logs: {LOG_DIR}\n'
                    f'\nLoad the game in Flash Player from:\n'
                    f'  http://127.0.0.1:8080/onepiece/main.swf\n'
                    ).encode('utf-8')
            self.send_response(200)
            self.send_header('Content-Type', 'text/plain; charset=utf-8')
            self.send_header('Content-Length', str(len(body)))
            self.end_headers()
            self.wfile.write(body)
            return

        if CLIENT_ROOT is None:
            self.send_response(404); self.end_headers(); return

        path = self.path.split('?', 1)[0]
        rel = path.lstrip('/')
        target = os.path.normpath(os.path.join(CLIENT_ROOT, rel))
        if not target.startswith(os.path.abspath(CLIENT_ROOT)):
            self.send_response(403); self.end_headers(); return
        if not os.path.isfile(target):
            self.send_response(404); self.end_headers(); return

        try:
            with open(target, 'rb') as f:
                data = f.read()
            ctype, _ = mimetypes.guess_type(target)
            ctype = ctype or 'application/octet-stream'
            self.send_response(200)
            self.send_header('Content-Type', ctype)
            self.send_header('Access-Control-Allow-Origin', '*')
            self.send_header('Content-Length', str(len(data)))
            self.end_headers()
            self.wfile.write(data)
        except Exception as e:
            import traceback; traceback.print_exc()
            self.send_response(500); self.end_headers()

    def log_message(self, fmt, *args):
        print(f'  HTTP {self.command} {self.path} -> '
              f'{args[1] if len(args) > 1 else "?"}')


def main(host='0.0.0.0', port=8080):
    print()
    print('=' * 70)
    print(f'  Pockie Pirates emulator (v4 -- create flow)')
    print(f'  Listening on http://{host}:{port}/')
    if CLIENT_ROOT:
        print(f'  Flash Player Standalone -> File -> Open Location ->')
        print(f'    http://127.0.0.1:{port}/onepiece/main.swf')
    print(f'  Browser status check: http://127.0.0.1:{port}/status')
    print('=' * 70)
    print()
    HTTPServer((host, port), AMFHandler).serve_forever()


if __name__ == '__main__':
    port = int(sys.argv[1]) if len(sys.argv) > 1 else 8080
    main(port=port)
