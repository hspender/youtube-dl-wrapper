<h3>About</h3>

Youtube-dl-Wrapper is a Bash script for Linux that makes using youtube-dl a little easier, but is basically just an exercise in learning [Git](https://git-scm.com/), [GitKraken](https://www.gitkraken.com/), [Intellij](https://www.jetbrains.com/idea/) and [Bash](https://www.gnu.org/software/bash/) for me.<br />
I hope to update and improve this code as well as maybe adding a [Zenity](https://wiki.gnome.org/Projects/Zenity) front end over time.<br />

<h3>Installation</h3>

You don't need to install youtube-dl-wrapper, but as part of ensuring and enabling it works as expected, installing helps.<br />

To install, run the installation script in the main directory - ~/YT-DL/Yt-DL.sh. This will check to see if you have youtube-dl installed and if you don't, it will install it.<br />
It installs to /home/{user}/bin/YT-DL and does not as yet create a menu entry, so you need to do that manually for the time being.<br />
I have chosen to download youtube-dl directly from their release page (https://github.com/ytdl-org/youtube-dl), in order to get  the latest version, but you can install it from your distro's repo' before installing this script if you'd rather.<br />
Note that this script does keep youtube-dl up to date by periodically checking the main repo for updates and applying them if needed.

<h3>Run</h3>

Execute the following command in the terminal...
```` bash 
~/bin/YT-DL/YT-DL.sh
````
Or create a link in your menu to this file for convenience.

Your video will be downloaded to your Desktop.

<h3>Uninstall</h3>

If you wish to uninstall this app, then you can do so by running the 'uninstall.sh' script.<br />
This should only uninstall components that were installed when you installed youtube-dl-wrapper, so if you had previsouly installed youtube-dl yourself, or manually added the 'usr/bin/python' link, you will need to uninstall them yourself manually.

<h3>::NOTE::</h3>

You can have issues if youtube-dl can't find python, to fix this you can create a symlink.<br />

If you get the error "/usr/bin/env: 'python': No such file or directory" then you can run the included script; 'python-error.sh' or open a terminal and execute this code...<br />
```bash{16}
sudo ln -s /usr/bin/python3 /usr/bin/python
```