# Rover Manipulator Control System
_author: Jack McCann_

## Description
These ROS packages form a real-time remote-control system (_the system_) for a simplified rover manipulator model. The system uses the open-source ds4_driver ROS package (included in this repo) to publish control signals to topic /joy. The system interprets these user control signals and outputs the next joint state for the manipulator joints; a _formeman_ node subscribes to the /joy topics which in turn publishes robot commands (a custom ROS message) to topic /commands which is subscribed to by the * *trajectory_planner* * node, which computes resolved-motion rate control and IK algorithms to control the robot, publishing to topics as defined in the underlying script. For epistemic purposes, a ROS_control/Gazebo simulation component is included in the repo, to visualise the system in operation.

## Setup Directions
1. ensure dualshock4 controller connected to computer, then run:
    *roslaunch ds4_driver ds4_driver.launch*

2. if you want to run the simulation for visualisation, run:
    *roslaunch robot_model_pkg robot_pos_xacro.launch*
    *roslaunch robot_control_pkg robot_pos_control.launch*

3. navigate to: <path to this repo>*/src/foreman/scripts* and run:
    *python3 forman.py*

4. navigate to: <path to this repo>*/src/trajectory_planner/scripts* and run:
    *python3 trajectory_planner.py*

## Customisation to other controllers/robot parameters
To incorporate other controllers into the system, ensure that control signals are published to topic /joy while omitting step 1. above. To modify the system for other robots, ensure accuracy of DH parameters as defined in class *trajectory_planner*.