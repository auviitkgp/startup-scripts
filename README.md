# startup-scripts

Repository to contain the startup scripts for the vehicle

These startup scripts can be activated using the gnomerc file
that is there as part of the [dotfiles](https://github.com/auviitkgp/dotfiles)
repository.


#Usage
The auto-start scripts on the bot are all 'shell-scripts' placed under  `/home/teamauv/startup_scripts/` .
The scripts are run by the 'X server' on user login. Therefore it's crucial that auto-login is enabled on the bot (otherwise even though the bot boots the scripts won't be run). To enable auto-login refer the follwing :
  http://askubuntu.com/questions/51086/how-do-i-enable-auto-login-in-lightdm

 - To add your own scripts you must place your 'shell-scripts' under `~/startup_scripts/` and append the following line to `~/.gnomerc`
 

   ```shell
   bash /home/teamauv/<your_script>.sh
   ```
   

 
 
 - Remember to add shebang to your script and change permissions to make your script executable.
 
  ```shell
  #!/bin/bash

  <your commands here>
  ```
  ```shell
  chmod +x your_script_name.sh
  ```

 - At present the working and yet systematic way to launch any '.launch' file at boot is as follows :
 
 ```shell
 /usr/bin/gnome-terminal -x sh -c " tmux new -d -s <session_name> 'export env-var1=blah; export env-var2=blah; roslaunch /absolute/path/to/.launch;'"
 ```
 - This creates a detached tmux session with a job running on it.
 - The addition of appropriate environment variable (mainly ROS_WORKSPACE and ROS_PACKAGE_PATH) is important (only absolute paths must be used for variables too), since sourcing other scripts doesn't work.
 - Notice the `-d` argument to tmux. This self-detaches the client from the newly created session. If `-d` is not used it would halt futher processing (as control would be stuck) and we wont be able to run any more commands. Furthermore the GUI on the system won't start.
 - For monitoring the jobs (using ssh) we can attach a tmux client to the appropriate tmux session using the follwing commands :
  
 
 ```shell
 tmux list-sessions
 
 
 tmux attach -t <session-name>
 ```
 



Copyright 2016 [Team AUV IIT Kharagpur](http://auviitkgp.github.io)
