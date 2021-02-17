#!/bin/bash
# Repo for unstable
# Currently only contains i3-gaps


echo "Adding gpg key."
wget -O - http://deb.skyl3r.com/deb.skyl3r.com.gpg.key | sudo apt-key add -
echo "Adding repository"
sudo touch /etc/apt/sources.list.d/deb.skyl3r.com.list
sudo sh -c 'echo "deb http://deb.skyl3r.com/debian unstable main" > /etc/apt/sources.list.d/deb.skyl3r.com.list'
