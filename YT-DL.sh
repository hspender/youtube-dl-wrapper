#!/bin/bash

###########################################
#                                         #
#  Script for downloading YouTube videos  #
#  It also checks that ytdl is installed  # 
#  and up to date!                        #
#  By Harry Spender                       #
#  Version 0.8.1                          #
#  Date of first version; 2022-04-04      #
#  Date of last update; 2022-04-20        #
#                                         #
###########################################

# Config...

# How many times should this script run before it checks for updates?
ud_frq=11 # This means the script will run on the number after that which you set here. The counter starts at 0.

# End config.

# Say hi, and declare version number...
echo " 
      
        #############################################################
        #                                                           #
        #      Welcome to the Harry's YouTube video downloader!     #
        #                     Version 0.8.1                         #
        #                                                           #
        #############################################################"

#  Environment check...

# Check for youtube-dl. If not found, prompt for install...
echo "
            Checking that youtube-dl is installed..."
if [ -f /usr/local/bin/youtube-dl ]
    then echo "            Youtube-dl found, nothing to install!"
        else echo " Youtube-dl not found and is needed.
Would you like to install it? (y/n)" && read -r install
until [ "$install" = y ] || [ "$install" = n ];
    do echo "  That is an invalid input, please use 'y' or 'n'." && read -r install
    done
fi

if [ "$install" = y ];
    then sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && sudo chmod a+rx /usr/local/bin/youtube-dl
elif [ "$install" = n ];
    then echo "
        ####################################################'
        #                                                  #
        #  You cannot use this script without youtube-dl.  #
        #  Aborting!                                       #
        #                                                  #
        #  Press 'Enter' to close this window...           #
        #                                                  #
        ####################################################" && read -r && exit 1

fi

#  End environment check.

# Move to working dir...
cd ~/Desktop || exit

# Start database incrementation...

# Read the database and put it in a variable...
ud_count=$(cat ~/bin/YT-DL/db.txt)

# Echo the latest value of the database
echo "
            This script has run $ud_count times since the last check for an update.
            It will check for updates after $ud_frq runs."

# Make the script increment the value in  the database by 1 each run...
let "ud_count=ud_count+1"

# Write the new value to the database...
echo "$ud_count" > ~/bin/YT-DL/db.txt

# End database incrementation...

# Start processing the update counter db...

if [ "$ud_count" -gt $ud_frq ];
    then echo "            We need to update!" && echo "            Checking for updates..." && youtube-dl -U && echo "0" > ~/bin/YT-DL/db.txt
        else echo "            No need to update yet..."
fi

# End processing the update counter db...

# Start acquiring info' about the desired video to download...

# Ask the user what the URL of the video is...

echo " 
      
        ###############################################################
        #                                                             #
        #  Please enter the URL of the video you want to download...  #
        #                                                             #
        ###############################################################"

read -r URL #Example - https://youtu.be/S8UNBfatLTo

# Validate user input of the URL variable...
until [[ $URL = *youtu* ]];
    do echo "            That is not a recognised URL.
            Please try again..." && read -r URL
done

clear

# Ask user if they want to see the download options...
echo "

       #############################################################
       #                                                           #
       #  Would you like to see the video download options? (y/n)  #
       #                                                           #
       #############################################################

"
read -r options

until [ "$options" = y ] || [ "$options" = n ];
    do echo "            That is not a valid answer.
            Your answer must be 'y' or 'n'
            Please try again..." && read -r options
done

clear

if [ "$options" = y ];
    then youtube-dl -F "$URL" && echo "
            Which of the options above would you
            like to choose? (See number at start of
            each line)." && read -r option && clear && youtube-dl -f "$option" "$URL"
        else echo "
       #####################################################
       #                                                   #
       #  Downloading full resolution video with audio...  #
       #                                                   #
       #####################################################" && youtube-dl "$URL"
fi

# End aquiring info' about the desired video to download...

echo "
        ################################################
        #                                              #
        #         Finished downloading.                #
        #                                              #
        #  Please press 'Enter' to close this window.  #
        #                                              #
        ################################################"
read -r

