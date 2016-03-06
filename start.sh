#!/bin/bash

#initialize vnc
/usr/bin/vncserver
/usr/bin/vncserver -kill :1

#add xfce4 startup to xstartup config file
echo "lxpanel &" >> ~/.vnc/xstartup

#run vncserver in background
/usr/bin/vncserver -geometry 1440x900 -depth 16& 

cp /opt/noVNC/vnc_auto.html /opt/noVNC/index.html

#run novnc
/opt/noVNC/utils/launch.sh --vnc localhost:5901
