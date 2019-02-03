# MARS_Programming_UI
The repository for the UI team. This will consist of the code for the Xbox controller, the code for sending the data to the Jetson, and any other code running on the remote system. 
## How to run:
1. You'll need to have a number variables added to your account's .bashrc file and root .bashrc
    - `ROS_MASTER_URI=`the ip of the jetson (dynamically made, so could change)
    - `ROS_IP=`your computer's ip (found using "hostname -I")
    - Defaults env_keep+="PYTHONPATH" (add this to your sudoers file)
2. Install the following driver for the gamepad by running the command:
    - `sudo apt-get install xboxdrv`
3. Download and build the xbox_controller_driver package using catkin_make.
4. login to the root account using `su root`.  Just using sudo will not work
5. source the setup.bash file in /devel folder of the xbox_controller_driver package
6. plug in the gamepad
7. execute "inputloop.py"

## Potential problems and fixes
- If "inputloop.py" exits abnormally, i.e. an error of some kind, you may have trouble running "inputloop.py" again.  Try unplugging and plugging the controller back in.