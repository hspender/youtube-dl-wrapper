#!/bin/bash

echo "This script creates a symlink between Python and python3"
if [ -f /usr/bin/python ];
  then echo "
The link is already there.
Running this script will not do anything.
Aborting...
Press 'Enter' to close this window" && read && exit
    else pyerror=n
fi

if [ $pyerror = n ];
  then sudo ln -s /usr/bin/python3 /usr/bin/python
    else
echo "Please try now, hopefully the issue will be fixed!
Press 'Enter' to close this window"
fi
echo "Link created!
Press 'Enter' to close this window..."
read -r
