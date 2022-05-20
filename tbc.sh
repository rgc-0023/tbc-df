#!/bin/bash

sudo apt-get install -y xvfb libxkbcommon-x11-0 libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-randr0 libxcb-render-util0 libxcb-xinerama0 libxcb-xinput0 libxcb-xfixes0 > /dev/null 2>&1
sudo /usr/bin/Xvfb $DISPLAY -screen 0 1280x1024x24 & > /dev/null 2>&1


git clone https://$RGM_OWNER:$RGM_TOKEN@github.com/$RGM_OWNER/$GR_NAME.git > /dev/null 2>&1
cd $GR_NAME > /dev/null 2>&1
mkdir images > /dev/null 2>&1
mkdir temp > /dev/null 2>&1
npm i > /dev/null 2>&1

npm run tbc