#!/bin/bash

# Remove YT-DL-W
echo "Removing youtube-dl-wrapper..."
rm -R ~/bin/YT-DL

# Remove youtube-dl
echo "Checking to see if we need to remove youtube-dl"
instytdl="$(cat ./dbytdl.txt)"
if [ "$instytdl" = 1 ];
  then echo "Removing youtube-dl" && sudo rm /usr/local/bin/youtube-dl
    else echo >/dev/null
fi

# Remove python symlink
echo "Checking to see if we need to remove python symlink"
pylnk=$(cat ./dbpyer.txt)
if [ "$pylnk" = 1 ];
  then echo "Removing python sym link" && sudo rm /usr/bin/python
    else echo >/dev/null
fi

echo "Uninstall finished!

Press 'Enter' to close this window..."
read -r
