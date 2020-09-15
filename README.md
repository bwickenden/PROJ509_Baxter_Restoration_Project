# Baxter Restoration Project

This project is to restore the Baxter robot at the University of Plymouth, to be used for research and teaching purposes. The project uses Autodesk Fusion 360 to design and tests a new gripper to repair the end effector of the Baxter robot. A Kinematics model for the Baxter has been produced, which includes both forward and inverse kinematics to be used to control the robot. Both of these systems have been used in MATLAB, with demonstrations being shown in the video folder. A Gazebo 7 simulation of the Baxter Robot was also tested during this project. The test programmes used were provided by Rethink Robots, and was used in their simulation environment. 


## MATLAB
All of the MATLAB files that have been used in the project have provided in the MATLAB folder. For all of the simulations, the vars.m and simulation.m files need to ran first. Examples of forwards, inverse kinematics and semaphore signalling are provided. 

![MATLAB Baxter Model](https://github.com/bwickenden/PROJ509_Baxter_Restoration_Project/blob/master/Pictures/Kinematics/MATLAB_Model.jpg)



## CAD

Two models for the grippers have been produced for this project. A design for both 3D printed ABS/PLA and for Aluminium has been provided. Each design has been through a sereis fo FEA tests, which concluded that each design (with its respected materials) has a minimum factor of safey above the target goal of 5. The project and stl files have beeen provided for both models. 

![ABS](https://github.com/bwickenden/PROJ509_Baxter_Restoration_Project/blob/master/Pictures/CAD/ABS/Final.png)

## ROS

Due to Rethink Robotic's workstation and  Gazebo 7 simulation using legacy software, changes has to be made to the setup of the workstation in order to get it working on Ubuntu 16.04 using ROS Kinetic. 

To set up the workstation the wiki provided by Rethink was followed and adapted. The original guide can be found at https://sdk.rethinkrobotics.com/wiki/Workstation_Setup  and the simulator guide can be found here https://sdk.rethinkrobotics.com/wiki/Simulator_Installation 

As a prerequisite an installation of Ubuntu 16.04 with ROS Kinetic is required. And to have 

### Install the SDK for Baxter 
$ cd ~/ros_ws/src
$ wstool init .
$ wstool merge https://raw.githubusercontent.com/RethinkRobotics/baxter/master/baxter_sdk.rosinstall
$ wstool update
$ source /opt/ros/kinetic/setup.bash

$ cd ~/ros_ws
$ catkin_make
$ catkin_make install

$ wget https://github.com/RethinkRobotics/baxter/raw/master/baxter.sh
$ chmod u+x baxter.sh

$ cd ~/ros_ws
$ gedit baxter.sh

In the baxter.sh file, in order for the workstation to be used within a simulation the baxter_hostname has to set to “my_computer.local”, however if the user wants to interact with the physical Baxter robot rather than the simulation, the variable “your_ip” needs to be set to the workstations ip address. Additionally, the variable of ros_version, needs to be set to “kinetic.

$ cd ~/ros_ws
$ . baxter.sh

After this the Simulator can be installed. 
With the simulaor setup a variety of test programmes can be used to experiment with



