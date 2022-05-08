#!/bin/bash

# Environment check. Checking for youtube-dl. If not found, prompt for install...
echo "
            Checking that youtube-dl is installed..."
if [ -f /usr/local/bin/youtube-dl ]
    then echo >/dev/null
        else sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && sudo chmod a+rx /usr/local/bin/youtube-dl
fi

#  End environment check.

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
cp db.txt ~/bin/YT-DL
cp YouTube-DL.svg ~/bin/YT-DL
cp YT-DL.sh ~/bin/YT-DL
cp LICENSE ~/bin/YT-DL
cp README.md ~/bin/YT-DL

# Check for the python symlink...

if [ -f /usr/bin/python ];
    then echo >/dev/null
        else echo "There may be problems running youtube-dl itself.
If you get the error message '/usr/bin/env: 'python': No such file or directory'
the you should run the included python-error.sh script to fix it."
fi

# Tell the user we're finished installing...
echo "youtube-dl-wrapper is now installed!

Press 'Enter' to close this window..."
read -r
