::About::<br />

youtube-dl wrapper is a script that makes using youtube-dl a little easier, but is basically just an exsercise in learing Git, GitKraken and Bash for me.<br />
I hope to update and improve this code as well as maybe adding a Zenity front end over time.

::Installation::<br />

To install, just run the install script in the main directory. This will check to see if you have youtube-dl installed and install it if you don't.<br />
I have chosen to download youtube-dl directly from their release page, but you can install it from your distro's repo' before installing this script if you'd rather.<br />
Note that my script does keep youtube-dl up to date by periodically checking the main repo for updates and applying them if needed.

::NOTE:: You can have issues if youtube-dl can't find python in the place it thinks it should be and to resove this, you need to creat a symlink.<br />

If you get the error "/usr/bin/env: 'python': No such file or directory" then open a terminal and execute this code...<br />
```bash{16}
sudo ln -s /usr/bin/python3 /usr/bin/python
```
Source; https://vuepressbook.com/tutorial/tutorial6.html#code-listings-in-markdown-files

