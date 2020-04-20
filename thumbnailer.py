# Python Script to change a photo to thumbnail size
# @Author: kooperativ
# @Date: 20.04.2020

import sys
from PIL import Image
import os.path

if len(sys.argv) != 2:
    print("Use programm like: thumbnailer.py <image_to_resize>")
    exit(1)

image = sys.argv[1]
basewidth = 100
print("Thumnailing file: {} to base width {}".format(image, basewidth))

if not os.path.isfile(image):
    print ("Image not found. aborting")
    exit(1)


img = Image.open(image)
wpercent = (basewidth/float(img.size[0]))
hsize = int((float(img.size[1])*float(wpercent)))
img = img.resize((basewidth,hsize), Image.ANTIALIAS)
img.save(image) 

print("done")