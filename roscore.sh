#!/bin/bash

source /opt/ros/indigo/setup.bash

/usr/bin/gnome-terminal -x sh -c "tmux new -s roscore '/opt/ros/indigo/bin/roscore'"

#/usr/bin/gnome-terminal -x sh -c "tmux new -s roslaunch /opt/ros/indigo/roslaunch /home/teamauv/ros_workspace/kraken_3.0/simulator_stack/thruster_remap_g500/remap.launch"
