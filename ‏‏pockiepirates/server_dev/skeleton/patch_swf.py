"""
Patches main.swf to point at the local emulator instead of the original
server (115.236.38.146:8080, long dead).

Run from this folder:
    python patch_swf.py

It creates main_local.swf next to the original. Open that file in Ruffle or
Flash Player.
"""
import os
import sys
import zlib

# Usage:
#   python patch_swf.py                            (auto-find main.swf)
#   python patch_swf.py "C:\path\to\main.swf"      (explicit path)

HERE = os.path.dirname(os.path.abspath(__file__))

if len(sys.argv) > 1:
    INPUT = sys.argv[1]
else:
    # Auto-search common locations
    candidates = [
        os.path.join(HERE, '..', '..', 'pockiepirates', 'onepiece', 'main.swf'),
        os.path.join(HERE, '..', 'pockiepirates', 'onepiece', 'main.swf'),
        os.path.join(HERE, '..', '..', '..', 'pockiepirates', 'onepiece', 'main.swf'),
        os.path.join(HERE, 'main.swf'),
    ]
    INPUT = next((c for c in candidates if os.path.exists(c)), candidates[0])

OUTPUT = os.path.join(os.path.dirname(INPUT) or '.', 'main_local.swf')

OLD_URL = b'http://115.236.38.146:8080/'
NEW_URL = b'http://127.0.0.1:8080/xxxx/'   # MUST be exactly the same length

assert len(OLD_URL) == len(NEW_URL), 'replacement URL must be same length'


def patch():
    if not os.path.exists(INPUT):
        print(f'ERROR: cannot find original SWF at:\n  {INPUT}')
        print('Make sure server_dev/ is sitting next to pockiepirates/.')
        sys.exit(1)

    with open(INPUT, 'rb') as f:
        sig = f.read(3)
        version = f.read(1)
        length_bytes = f.read(4)
        rest = f.read()

    if sig == b'CWS':
        body = zlib.decompress(rest)
        was_compressed = True
    elif sig == b'FWS':
        body = rest
        was_compressed = False
    else:
        print(f'ERROR: unknown SWF signature {sig!r}')
        sys.exit(1)

    if OLD_URL not in body:
        print(f'ERROR: original URL {OLD_URL.decode()} not found in SWF.')
        print('The SWF may already be patched, or it is a different version.')
        sys.exit(1)

    count = body.count(OLD_URL)
    patched = body.replace(OLD_URL, NEW_URL)

    if was_compressed:
        out_body = zlib.compress(patched)
    else:
        out_body = patched

    with open(OUTPUT, 'wb') as f:
        f.write(sig + version + length_bytes + out_body)

    print('=' * 60)
    print(f'  SWF patched successfully')
    print(f'  Replaced {count} occurrence of the original URL')
    print(f'    OLD: {OLD_URL.decode()}')
    print(f'    NEW: {NEW_URL.decode()}')
    print(f'  Output: main_local.swf')
    print('=' * 60)
    print()
    print('Next: open main_local.swf in Ruffle (or Flash Player Projector).')
    print('Make sure server.py is running first, in another terminal.')


if __name__ == '__main__':
    patch()
