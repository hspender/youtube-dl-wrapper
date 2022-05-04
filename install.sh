#!/bin/bash

# Check for needed directories...
if [ -d ~/bin ];
  then echo >/dev/null
    else mkdir ~/bin
fi

if [ -d ~/bin/YT-DL ];
  then echo >/dev/null
    else mkdir ~/bin/YT-DL
fi

# copy over the files...
cp db.txt ~/bin/YT-DL/db.txt
cp YouTube-DL.svg ~/bin/YT-DL
cp YT-DL.sh ~/bin/YT-DL
cp LICENSE ~/bin/YT-DL
cp README.md ~/bin/YT-DL

# tell the user we're finished installing...
echo "youtube-dl wrapper is now installed!

::NOTE::
If when you run this program and you get the error -
 "/usr/bin/env: 'python': No such file or directory"
 then run the included script; python-error.sh

Press 'Enter' to close this window..."
read
