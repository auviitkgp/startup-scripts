#!/bin/bash

source /opt/ros/indigo/setup.bash
source /home/teamauv/.bashrc

#/usr/bin/gnome-terminal -x sh -c "tmux new -s roscore '/opt/ros/indigo/bin/roscore'"

#/usr/bin/gnome-terminal -x sh -c "tmux new -s roslaunch 'source /home/teamauv/ros_workspace/setup.bash;/opt/ros/indigo/bin/roslaunch /home/teamauv/ros_workspace/kraken_3.0/Scripts/launch/vehicle/imuDvl.launch'"

gnome-terminal -x sh -c "tmux new -d -s roslaunch 'export ROS_WORKSPACE=/home/teamauv/ros_workspace/;export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:/home/teamauv/ros_workspace/; roslaunch /home/teamauv/ros_workspace/kraken_3.0/Scripts/launch/vehicle/testThrusters.launch;bash'"
