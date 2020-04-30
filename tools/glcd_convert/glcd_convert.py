#!/usr/bin/env python

import os, sys
import struct
from PIL import Image


def image_info(fn):
    try:
        with Image.open(fn) as im:
            print(fn, im.format, "%dx%d" % im.size, im.mode)
    except IOError:
        print("Unable to open file " + fn)
        pass


def image_convert(fn):
    an = os.path.splitext(os.path.basename(fn))[0]
    try:
        im = Image.open(fn)
        print("Image " + os.path.basename(fn) + " opened...")
        create_h_file(fn, an, im)
        create_c_file(fn, an, im)
    except:
        print("ERROR, unable to open/convert image {}".format(fn))
    finally:
        im.close()


def create_h_file(fn, array_name, image):
    f, e = os.path.splitext(fn)
    outfn = f + ".h"
    try:
        of = open(outfn, "w+")
    except:
        print("ERROR, can't create h-file " + outfn)
        return

    print("Creating .h-file " + outfn + " ...")

    try:
        imw, imh = image.size
    except:
        print("ERROR, can't get size from image!")

    try:
        of.write("// Auto-created with {} from file {}\n\n".format(os.path.basename(sys.argv[0]), fn))
        bn = os.path.basename(f)
        of.write("#ifndef __{}_H__\n".format(bn.upper()))
        of.write("#define __{}_H__\n\n".format(bn.upper()))

        of.write("#include <stddef.h>\n\n")

        of.write("#define {}_WIDTH ({})\n".format(array_name.upper(), imw + (imw%2) ))
        of.write("#define {}_HEIGHT ({})\n\n".format(array_name.upper(), imh))

        of.write("extern const uint8_t {}[{}];\n\n".format(array_name, ((imw+1)/2)*imh))

        of.write("#endif // __{}_H__\n\n".format(bn.upper()))
    except:
        print("Error, can't write to h-file " + outfn)
        print(sys.exc_info())
    finally:
        of.close()


def create_c_file(fn, array_name, image):
    f, e = os.path.splitext(fn)
    outfn = f + ".c"
    try:
        of = open(outfn, "w+")
    except:
        print("Error, can't create c-file " + outfn)
        return

    print("Creating .c-file " + outfn + " ...")

    try:
        imw, imh = image.size
    except:
        print("ERROR, can't get size from image!")


    try:
        of.write("// Auto-created with {} from file {}\n\n".format(os.path.basename(sys.argv[0]), fn))
        bn = os.path.basename(f)

        of.write("#include \"{}.h\"\n\n".format(bn))

        of.write("// Bitmap from \"" + fn + "\" ({}x{} pixels) : \n".format(imw, imh))
        of.write("const uint8_t {}[{}] = {{\n".format(array_name, ((imw+1)/2)*imh))

        array_str = image_to_4bpp_string(image)
        of.write(array_str)

        of.write("};\n\n")
    except:
        print("Error, can't write to c-file " + outfn)
        print(sys.exc_info())
    finally:
        of.close()


def image_to_4bpp_image(im_in):
    try:
        gs_image = im_in.convert("L")    # to 8b grayscale
        pal_img = Image.new("P", (1,1))  # create 16-color gs palette...
        pal_img.putpalette( (0,0,0 , 16,16,16, 32,32,32, 48,48,48,
                             64,64,64, 80,80,80, 96,96,96, 112,112,112,
                             128,128,128, 144,144,144, 160,160,160, 176,176,176,
                             192,192,192, 208,208,208, 224,224,224, 240,240,240) )
        gs16 = gs_image.quantize(colors=16, palette=pal_img) # quantize 8b to 4b grayscale
        return gs16.convert("L")
    except:
        print("ERROR, could not convert image to 4b grayscale")
        print(sys.exc_info())
        return None


def image_to_4bpp_string(image):
    s = "    "
    lines = 0
    try:
        im = image_to_4bpp_image(image)
#        im.show()
        w, h = im.size
        for y in range(h):
            for x in range(0, w, 2):
                p1 = im.getpixel((x,y)) >> 4
                p2 = im.getpixel((x+1,y)) >> 4 if x+1 < w else 0
                s += "0x%02X, " % (p1*16 + p2)
                if x % 16 == 14:
                    s += "\n    "
                    lines += 1
            if w % 16 != 0:
                s += "\n    "
                lines += 1

        print("Bitmap ({}x{} pixels) converted to {} lines array".format(w,h,lines))
        return s

    except:
        print("ERROR, could not convert pixels to string")
        print(sys.exc_info())
        return ""



if __name__== "__main__":
#    print("argc={} argv={}".format(len(sys.argv), sys.argv))
    if len(sys.argv) == 1:
        print("Usage: ./glcd_convert {[image1] [image2] ...}")
    else:
        for infile in sys.argv[1:]:
#            image_info(infile)
            image_convert(infile)
