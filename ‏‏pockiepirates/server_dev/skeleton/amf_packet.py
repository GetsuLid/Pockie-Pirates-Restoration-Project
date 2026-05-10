"""
AMF0/3 packet framing - the outer envelope BlazeDS uses.

Packet structure:
  u16  version       (0x0003 = AMF3 mixed)
  u16  header_count
  for each header:
    u16  name_length, name (UTF-8)
    u8   must_understand
    u32  body_length (or 0xFFFFFFFF for unknown)
    AMF0 value (with possible AMF3 escape via 0x11 marker)
  u16  body_count
  for each body:
    u16  target_uri_length, target_uri (UTF-8)
    u16  response_uri_length, response_uri (UTF-8)
    u32  body_length
    AMF0 value

The body's AMF0 value can be one of:
  - 0x11 (AVM+ / AMF3 escape) followed by a single AMF3 value
  - 0x0a (AMF0 strict array) wrapping AMF3-escaped argument(s)  -- what Flex
                                                                    remoting
                                                                    actually
                                                                    sends
  - Other AMF0 types (rare in modern Flex traffic)

For modern Flex/BlazeDS clients the request bodies are a strict array of
length 1 whose only element is an AMF3-escaped flex.messaging.messages.*
message (CommandMessage or RemotingMessage).
"""
import struct
from amf3_codec import AMF3Decoder, AMF3Encoder, decode_amf3, encode_amf3


def _read_amf0_value(data, pos):
    """Read one AMF0 value at pos and return (value, new_pos)."""
    marker = data[pos]; pos += 1
    if marker == 0x11:
        dec = AMF3Decoder(data[pos:])
        val = dec.read_value()
        return val, pos + dec.pos
    if marker == 0x0a:
        length = struct.unpack('>I', data[pos:pos+4])[0]
        pos += 4
        elements = []
        for _ in range(length):
            v, pos = _read_amf0_value(data, pos)
            elements.append(v)
        if len(elements) == 1:
            return elements[0], pos
        return elements, pos
    if marker == 0x05:
        return None, pos
    if marker == 0x06:
        return None, pos
    return {'__amf0_unhandled__': True, 'marker': marker}, pos


def parse_packet(data):
    pos = 0
    version = struct.unpack('>H', data[pos:pos+2])[0]; pos += 2
    header_count = struct.unpack('>H', data[pos:pos+2])[0]; pos += 2
    headers = []
    for _ in range(header_count):
        name_len = struct.unpack('>H', data[pos:pos+2])[0]; pos += 2
        name = data[pos:pos+name_len].decode('utf-8'); pos += name_len
        must_understand = data[pos]; pos += 1
        body_len = struct.unpack('>I', data[pos:pos+4])[0]; pos += 4
        body_start = pos
        val, pos = _read_amf0_value(data, pos)
        if body_len != 0xFFFFFFFF and pos < body_start + body_len:
            pos = body_start + body_len
        headers.append({'name': name, 'must_understand': must_understand, 'value': val})

    body_count = struct.unpack('>H', data[pos:pos+2])[0]; pos += 2
    bodies = []
    for _ in range(body_count):
        target_len = struct.unpack('>H', data[pos:pos+2])[0]; pos += 2
        target = data[pos:pos+target_len].decode('utf-8'); pos += target_len
        resp_len = struct.unpack('>H', data[pos:pos+2])[0]; pos += 2
        response = data[pos:pos+resp_len].decode('utf-8'); pos += resp_len
        body_len = struct.unpack('>I', data[pos:pos+4])[0]; pos += 4
        body_start = pos
        val, pos = _read_amf0_value(data, pos)
        if body_len != 0xFFFFFFFF and pos < body_start + body_len:
            pos = body_start + body_len
        bodies.append({'target': target, 'response': response, 'value': val})

    return {'version': version, 'headers': headers, 'bodies': bodies}


def build_packet(bodies, headers=None):
    headers = headers or []
    out = b''
    out += struct.pack('>H', 0x0003)
    out += struct.pack('>H', len(headers))
    for h in headers:
        name = h['name'].encode('utf-8')
        out += struct.pack('>H', len(name)) + name
        out += bytes([h.get('must_understand', 0)])
        out += struct.pack('>I', 0xFFFFFFFF)
        out += bytes([0x11]) + encode_amf3(h['value'])

    out += struct.pack('>H', len(bodies))
    for b in bodies:
        target = b['target'].encode('utf-8')
        response = b['response'].encode('utf-8')
        out += struct.pack('>H', len(target)) + target
        out += struct.pack('>H', len(response)) + response
        body = bytes([0x11]) + encode_amf3(b['value'])
        out += struct.pack('>I', len(body)) + body

    return out
