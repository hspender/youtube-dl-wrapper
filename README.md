::About::<br />

Youtube-dl-Wrapper is a Bash script for Linux that makes using youtube-dl a little easier, but is basically just an exercise in learning Git, GitKraken and Bash for me.<br />
I hope to update and improve this code as well as maybe adding a Zenity front end over time.<br />

::Installation::<br />

To install, just run the installation script in the main directory. This will check to see if you have youtube-dl installed and install it if you don't.<br />
It installs to /home/user/bin/YT-DL and does not as yet create a menu entry, so you need to do that manually for the time being.<br />
To run...
```` bash 
~/bin/YT-DL/YT-DL.sh
````
I have chosen to download youtube-dl directly from their release page, in order to get  the latest version, but you can install it from your distro's repo' before installing this script if you'd rather.<br />
Note that my script does keep youtube-dl up to date by periodically checking the main repo for updates and applying them if needed.

::NOTE:: You can have issues if youtube-dl can't find python, to fix this you can create a symlink.<br />

If you get the error "/usr/bin/env: 'python': No such file or directory" then open a terminal and execute this code...<br />
```bash{16}
sudo ln -s /usr/bin/python3 /usr/bin/python
```
Source; https://newbedev.com/usr-bin-env-python-no-such-file-or-directory

