husky_simualtor
==============

# Install dependencies & upgrade system packages
```bash
    sudo apt-get install ros-melodic-moveit-ros-perception
    sudo apt-get install ros-melodic-moveit-planners-ompl
    sudo apt-get install ros-melodic-moveit-ros-visualization
    sudo apt install ros-melodic-soem
    sudo apt install ros-melodic-serial
    sudo apt install ros-melodic-moveit-msgs
    sudo apt install ros-melodic-stereo-image-proc

    sudo apt upgrade
    sudo apt update
```

## Get ROS packages
Create new workspace, clone all the needed packages and build workspace follows:

```bash
    mkdir -p ~/dual_ws/src
    cd dual_ws/src
    git clone --recursive https://github.com/EAkita/vaultbot_sim.git
    cd ..
    rosdep install --from-paths src --ignore-src -r -y
    catkin build
    source ~/dual_ws/devel/setup.bash
```

For simulating the Dual UR5 Husky:
Make sure your environment variables are set and you re-source your terminal:
```bash
    source ./env_vars.sh 
```

Launch the simulator for the Dual UR5 Husky flawlessly.
```bash
    roslaunch husky_gazebo husky_empty_world.launch 
```

To control the arms, bring up the moveit planning execution node with the real:=false flag passed in. 

    roslaunch husky_dual_ur5_moveit_config husky_dual_ur5_planning_execution.launch real:=false

To launch RViz so you can control the robot, see through its eyes, see all of its sensor data, and all data about the robot, run the visualization: 

    roslaunch husky_dual_ur5_moveit_config moveit_rviz.launch 

Playing around with the functionality & learning more about the system

With the newest version of the Dual UR5 Husky you are able to move the FLIR PTU, the arms, and the mobile base all through the RViz interface. You can even see through the cameras, visualize point clouds, and visualize laser data. Below, I show how to do each of those things. Unfortunately at this time, the gripper must be programmatically moved through the command line. See
below for info on how to do that.

Moving the Robotiq Grippers/opening and closing them via command line:

    rosrun robotiq_s_model_control SModelSimpleController.py _topic:=/left_hand/command

You can now move the gripper with any means you want using the command list provided. To move the right gripper, simply change left_hand to right_hand above
