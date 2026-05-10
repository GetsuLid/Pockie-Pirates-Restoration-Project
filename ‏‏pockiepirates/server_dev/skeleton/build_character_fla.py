"""
Build a new Person/{N}.fla by replacing bitmaps in 1006.fla.

Usage:
    python build_character_fla.py <output_id> <frames_dir>

Where:
    output_id    is 1001..1008 (or any int) -- creates {output_id}.fla
    frames_dir   contains 14 PNG files named:
                   idle_1.png  idle_2.png  idle_3.png  idle_4.png
                   idle_5.png  idle_6.png  idle_7.png       (191x132 each)
                   walk_1.png  walk_2.png  walk_3.png  walk_4.png
                   walk_5.png  walk_6.png  walk_7.png  walk_8.png  (255x122 each)
                 (only the frames you want to replace need to exist; missing
                  ones keep the 1006 mermaid bitmap).

This produces a new .fla. To turn it into a .swf you still need Adobe
Animate / Flash Pro: open the .fla, File -> Publish -> SWF.
"""
import sys, os, shutil, zipfile, tempfile

TEMPLATE_FLA = os.path.join(
    os.path.dirname(__file__), '..', '..',
    'pockiepirates', 'assets', 'images', 'Person', '1006.fla')

# Bitmap N.png -> "logical frame name" (idle_1 ... idle_7, walk_1 ... walk_8)
# Determined from the FLA timeline: odd-numbered Bitmap PNGs in order.
BITMAP_TO_FRAME = {
    'Bitmap 1.png':  'idle_1', 'Bitmap 3.png':  'idle_2',
    'Bitmap 5.png':  'idle_3', 'Bitmap 7.png':  'idle_4',
    'Bitmap 9.png':  'idle_5', 'Bitmap 11.png': 'idle_6',
    'Bitmap 13.png': 'walk_1', 'Bitmap 15.png': 'walk_2',
    'Bitmap 17.png': 'walk_3', 'Bitmap 19.png': 'walk_4',
    'Bitmap 21.png': 'walk_5', 'Bitmap 23.png': 'walk_6',
    'Bitmap 25.png': 'walk_7', 'Bitmap 27.png': 'walk_8',
}

# Bitmap N -> bin/M N filename in the FLA
BITMAP_TO_DAT = {
    'Bitmap 1.png':  'bin/M 1 1373540432.dat',
    'Bitmap 3.png':  'bin/M 2 1373540432.dat',
    'Bitmap 5.png':  'bin/M 3 1373540432.dat',
    'Bitmap 7.png':  'bin/M 4 1373540432.dat',
    'Bitmap 9.png':  'bin/M 5 1373540432.dat',
    'Bitmap 11.png': 'bin/M 6 1373540432.dat',
    'Bitmap 13.png': 'bin/M 7 1373540432.dat',
    'Bitmap 15.png': 'bin/M 8 1373540432.dat',
    'Bitmap 17.png': 'bin/M 9 1373540432.dat',
    'Bitmap 19.png': 'bin/M 10 1373540432.dat',
    'Bitmap 21.png': 'bin/M 11 1373540432.dat',
    'Bitmap 23.png': 'bin/M 12 1373540432.dat',
    'Bitmap 25.png': 'bin/M 13 1373540432.dat',
    'Bitmap 27.png': 'bin/M 14 1373540432.dat',
}


def png_to_dat(png_path):
    """Convert a PNG to JPEXS' .dat raw bitmap format.

    The .dat is just raw RGBA pixel data: 4 bytes header (width hi/lo, height
    hi/lo) followed by row-major RGBA. Adobe Animate will re-import the PNG
    when opened, so the DAT just needs to be plausible -- we mirror what
    JPEXS exports.
    """
    from PIL import Image
    img = Image.open(png_path).convert('RGBA')
    raw = img.tobytes()  # row-major RGBA
    # JPEXS DAT format: little-endian width, height (uint32), then RGBA bytes
    import struct
    header = struct.pack('<II', img.width, img.height)
    return header + raw


def main():
    if len(sys.argv) != 3:
        print(__doc__)
        sys.exit(1)
    output_id = sys.argv[1]
    frames_dir = sys.argv[2]
    out_path = os.path.abspath(f'{output_id}.fla')

    # Copy template, then patch entries
    shutil.copy(TEMPLATE_FLA, out_path + '.tmp')

    # Build a set of frames the user provided
    new_frames = {}
    for bitmap_name, frame_name in BITMAP_TO_FRAME.items():
        candidate = os.path.join(frames_dir, frame_name + '.png')
        if os.path.isfile(candidate):
            new_frames[bitmap_name] = candidate

    if not new_frames:
        print(f'No frame replacements found in {frames_dir}')
        print(f'Expected files like idle_1.png, walk_3.png, etc.')
        sys.exit(1)

    print(f'Replacing {len(new_frames)} of 14 bitmaps:')
    for bn, fp in new_frames.items():
        print(f'  {bn} <- {os.path.basename(fp)}')

    # Read template, write patched zip
    with zipfile.ZipFile(out_path + '.tmp', 'r') as src_zip:
        with zipfile.ZipFile(out_path, 'w', zipfile.ZIP_DEFLATED) as dst_zip:
            for entry in src_zip.namelist():
                if entry in new_frames:
                    # Replace the PNG
                    with open(new_frames[entry], 'rb') as f:
                        dst_zip.writestr(entry, f.read())
                    # Also replace the corresponding DAT
                    dat_entry = BITMAP_TO_DAT[entry]
                    dst_zip.writestr(dat_entry, png_to_dat(new_frames[entry]))
                elif entry in BITMAP_TO_DAT.values() and any(
                        BITMAP_TO_DAT[bn] == entry for bn in new_frames):
                    # Skip -- already wrote replacement above
                    continue
                else:
                    # Copy unchanged
                    dst_zip.writestr(entry, src_zip.read(entry))

    os.remove(out_path + '.tmp')
    print(f'\nWrote {out_path}')
    print(f'Open this in Adobe Animate, then File -> Publish (or press Ctrl+Enter)')
    print(f'to export {output_id}.swf alongside it.')


if __name__ == '__main__':
    main()
