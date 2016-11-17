#!/usr/bin/env bash



echo Restarting Supervisor
sudo service supervisor restart

echo Adding deploy key
eval "$(ssh-agent -s)"



