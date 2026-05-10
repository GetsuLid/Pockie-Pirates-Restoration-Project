"""
AMF3 codec for Pockie Pirates server emulator.
v3 — encodes Flex messaging classes with sealed traits as Flex expects.
"""
import struct
import io


# Sealed trait definitions for Flex messaging classes.
# Property order MUST match Flex's serialization order, otherwise the client
# rejects the response with "Server.Acknowledge.Failed".
FLEX_SEALED_TRAITS = {
    'flex.messaging.messages.AcknowledgeMessage': [
        'body', 'clientId', 'destination', 'headers',
        'messageId', 'timestamp', 'timeToLive', 'correlationId',
    ],
    'flex.messaging.messages.AsyncMessage': [
        'body', 'clientId', 'destination', 'headers',
        'messageId', 'timestamp', 'timeToLive', 'correlationId',
    ],
    'flex.messaging.messages.CommandMessage': [
        'body', 'clientId', 'destination', 'headers',
        'messageId', 'timestamp', 'timeToLive', 'correlationId',
        'operation',
    ],
    'flex.messaging.messages.RemotingMessage': [
        'body', 'clientId', 'destination', 'headers',
        'messageId', 'timestamp', 'timeToLive',
        'source', 'operation',
    ],
    'flex.messaging.messages.ErrorMessage': [
        'body', 'clientId', 'destination', 'headers',
        'messageId', 'timestamp', 'timeToLive', 'correlationId',
        'faultCode', 'faultString', 'faultDetail', 'rootCause', 'extendedData',
    ],
}


class AMF3Decoder:
    def __init__(self, data: bytes):
        self.data = data
        self.pos = 0
        self.string_table = []
        self.object_table = []
        self.trait_table = []

    def read_byte(self) -> int:
        b = self.data[self.pos]; self.pos += 1; return b

    def read_u29(self) -> int:
        v = 0
        for _ in range(3):
            b = self.read_byte()
            v = (v << 7) | (b & 0x7F)
            if not (b & 0x80): return v
        return (v << 8) | self.read_byte()

    def read_u29_int(self) -> int:
        v = self.read_u29()
        return v - 0x20000000 if v & 0x10000000 else v

    def read_double(self) -> float:
        v = struct.unpack('>d', self.data[self.pos:self.pos + 8])[0]
        self.pos += 8; return v

    def read_string(self) -> str:
        h = self.read_u29()
        if h & 1:
            length = h >> 1
            if length == 0: return ""
            s = self.data[self.pos:self.pos + length].decode('utf-8', errors='replace')
            self.pos += length
            self.string_table.append(s)
            return s
        return self.string_table[h >> 1]

    def read_object(self):
        h = self.read_u29()
        if not (h & 1): return self.object_table[h >> 1]
        h >>= 1
        if not (h & 1):
            traits = self.trait_table[h >> 1]
        else:
            h >>= 1
            externalizable = bool(h & 1)
            dynamic = bool((h >> 1) & 1)
            sealed_count = h >> 2
            class_name = self.read_string()
            sealed_props = [self.read_string() for _ in range(sealed_count)]
            traits = (class_name, sealed_props, dynamic, externalizable)
            self.trait_table.append(traits)

        class_name, sealed_props, dynamic, externalizable = traits
        obj = {}
        if class_name and class_name not in ('flex.messaging.io.ObjectProxy', 'Object'):
            obj['__class__'] = class_name
        self.object_table.append(obj)

        if externalizable:
            if class_name in ('flex.messaging.io.ArrayCollection', 'flex.messaging.io.ObjectProxy'):
                inner = self.read_value()
                self.object_table[-1] = inner
                return inner
            raise ValueError(f"Unsupported externalizable: {class_name}")

        for prop in sealed_props:
            obj[prop] = self.read_value()
        if dynamic:
            while True:
                key = self.read_string()
                if key == "": break
                obj[key] = self.read_value()
        return obj

    def read_array(self):
        h = self.read_u29()
        if not (h & 1): return self.object_table[h >> 1]
        length = h >> 1
        result = []
        self.object_table.append(result)
        assoc = {}
        while True:
            key = self.read_string()
            if key == "": break
            assoc[key] = self.read_value()
        for _ in range(length):
            result.append(self.read_value())
        if assoc:
            return {'__assoc__': assoc, '__dense__': result}
        return result

    def read_value(self):
        marker = self.read_byte()
        if marker == 0x00 or marker == 0x01: return None
        if marker == 0x02: return False
        if marker == 0x03: return True
        if marker == 0x04: return self.read_u29_int()
        if marker == 0x05: return self.read_double()
        if marker == 0x06: return self.read_string()
        if marker == 0x08:
            h = self.read_u29()
            if not (h & 1): return self.object_table[h >> 1]
            ms = self.read_double()
            self.object_table.append(ms); return ms
        if marker == 0x09: return self.read_array()
        if marker == 0x0A: return self.read_object()
        if marker == 0x0C:
            h = self.read_u29()
            if not (h & 1): return self.object_table[h >> 1]
            length = h >> 1
            ba = self.data[self.pos:self.pos + length]
            self.pos += length
            self.object_table.append(ba); return ba
        raise ValueError(f"Unknown AMF3 marker: 0x{marker:02x} at pos {self.pos - 1}")


class AMF3Encoder:
    def __init__(self):
        self.buf = io.BytesIO()
        self.string_table = {}
        # Combined trait table for inline+ref tracking
        self.trait_table = {}

    def write_byte(self, b: int):
        self.buf.write(bytes([b & 0xFF]))

    def write_u29(self, v: int):
        if v < 0x80:
            self.buf.write(bytes([v]))
        elif v < 0x4000:
            self.buf.write(bytes([(v >> 7) | 0x80, v & 0x7F]))
        elif v < 0x200000:
            self.buf.write(bytes([(v >> 14) | 0x80, ((v >> 7) & 0x7F) | 0x80, v & 0x7F]))
        else:
            self.buf.write(bytes([(v >> 22) | 0x80, ((v >> 15) & 0x7F) | 0x80,
                                  ((v >> 8) & 0x7F) | 0x80, v & 0xFF]))

    def write_double(self, v: float):
        self.buf.write(struct.pack('>d', v))

    def write_string(self, s: str):
        if s == "":
            self.write_u29(1); return
        if s in self.string_table:
            self.write_u29(self.string_table[s] << 1); return
        self.string_table[s] = len(self.string_table)
        encoded = s.encode('utf-8')
        self.write_u29((len(encoded) << 1) | 1)
        self.buf.write(encoded)

    def _emit_traits(self, cls, ext, dyn, sealed_props):
        """Emit traits header — handles trait reference dedup."""
        sig = (cls, ext, dyn, tuple(sealed_props))
        if sig in self.trait_table:
            self.write_u29((self.trait_table[sig] << 2) | 0x01)
            return False
        self.trait_table[sig] = len(self.trait_table)
        # bit0=1 (inline obj), bit1=1 (inline traits), bit2=ext, bit3=dyn, bits4+=sealed_count
        flags = 0x03 | (0x04 if ext else 0) | (0x08 if dyn else 0) | (len(sealed_props) << 4)
        self.write_u29(flags)
        self.write_string(cls)
        for p in sealed_props:
            self.write_string(p)
        return True

    def write_value(self, v):
        if v is None:
            self.write_byte(0x01)
        elif v is True:
            self.write_byte(0x03)
        elif v is False:
            self.write_byte(0x02)
        elif isinstance(v, bool):
            self.write_byte(0x03 if v else 0x02)
        elif isinstance(v, int) and -0x10000000 <= v < 0x10000000:
            self.write_byte(0x04); self.write_u29(v & 0x1FFFFFFF)
        elif isinstance(v, (int, float)):
            self.write_byte(0x05); self.write_double(float(v))
        elif isinstance(v, str):
            self.write_byte(0x06); self.write_string(v)
        elif isinstance(v, bytes):
            self.write_byte(0x0C)
            self.write_u29((len(v) << 1) | 1)
            self.buf.write(v)
        elif isinstance(v, list):
            self.write_byte(0x09)
            self.write_u29((len(v) << 1) | 1)
            self.write_string("")  # no associative
            for item in v:
                self.write_value(item)
        elif isinstance(v, dict):
            cls = v.get('__class__', '')
            self.write_byte(0x0A)
            if cls in FLEX_SEALED_TRAITS:
                # Sealed-traits encoding (Flex messaging classes)
                sealed = FLEX_SEALED_TRAITS[cls]
                self._emit_traits(cls, ext=False, dyn=False, sealed_props=sealed)
                for prop in sealed:
                    self.write_value(v.get(prop, None))
            else:
                # Dynamic encoding for unknown / generic objects
                self._emit_traits(cls, ext=False, dyn=True, sealed_props=[])
                for k, val in v.items():
                    if k == '__class__': continue
                    self.write_string(k)
                    self.write_value(val)
                self.write_string("")  # end of dynamic props
        else:
            raise ValueError(f"Cannot encode type {type(v).__name__}")

    def get_bytes(self) -> bytes:
        return self.buf.getvalue()


def decode_amf3(data: bytes):
    return AMF3Decoder(data).read_value()


def encode_amf3(value) -> bytes:
    enc = AMF3Encoder()
    enc.write_value(value)
    return enc.get_bytes()
