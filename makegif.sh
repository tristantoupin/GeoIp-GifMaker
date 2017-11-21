#!/bin/bash

# CLEAN
# Backup previous images and empty "output" folder 
echo "Cleaning directories..."
mkdir -p ./output/backup
rm ./output/backup/* 2>/dev/null||echo "output file empty"
mv ./output/*.png ./output/backup 2>/dev/null||echo "nothing to backup"


# Get list of IPs in correct format
python ./scripts/list_of_ips.py ip.txt

# Generate images from file ip.txt
python3 ./scripts/pygeoipmap.py -i ip.txt

echo "Creating gif image..."
# Check is imageMagick installed
if (brew ls --versions imagemagick > /dev/null;) 
	then echo "imageMagick installed"
	else brew install imagemagick
fi

# Generate gifs from 
convert -delay 30 -loop 0 output/*.png output.gif