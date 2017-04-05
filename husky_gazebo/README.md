husky_simualtor
==============

For simulating the Dual UR5 Husky:

Make sure your environment variables are set and you re-source your terminal:

    export DUAL_ARM_BULKHEAD=true
    export HUSKY_TOP_PLATE_ENABLED=false
    export DUAL_UR5_ENABLED=true
    export HUSKY_DUAL_UR5_ENABLED=true
    export ROBOTIQ_GRIPPERS_ENABLED=true
    export HUSKY_USER_RAILS=false
    export FLIR_PTU_ENABLED=true

Also make sure you've added your sourced workspace to the bashrc.

e.g

    source ~/${YOUR_WS}/devel/setup.bash

Once your environment is set up you should be able to run the simulator for the Dual UR5 Husky flawlessly.

    roslaunch husky_gazebo husky_empty_world.launch 

2. To control the arms, bring up the moveit planning execution node with the real:=false flag passed in. When using a real robot, you won't need this parameter.

    roslaunch husky_dual_ur5_moveit_config husky_dual_ur5_moveit_planning_execution.launch real:=false

For a visual tutorial, see here: ${TODO}

3. To launch RViz so you can control the robot, see through its eyes, see all of its sensor data, and all data about the robot, run the visualization: 

    roslaunch husky_dual_ur5_moveit_config moveit_rviz.launch 

4. Playing around with the functionality & learning more about the system

    With the newest version of the Dual UR5 Husky you are able to move the FLIR PTU, the arms, and the mobile base all through the RViz interface. You can even see through the cameras, visualize point clouds, and visualize laser data. Below, I show how to do each of those things. Unfortunately at this time, the gripper must be programmatically moved through the command line. See below for info on how to do that.

5. Moving the Robotiq Grippers/opening and closing them via command line:

    rosrun robotiq_s_model_control SModelSimpleController.py _topic:=/left_hand/command

    You can now move the gripper with any means you want using the command list provided. To move the right gripper, simply change left_hand to right_hand above

6. Pick and Place Demo

    This small code demo will show you how to move the arm from point A to point B, and then grab. 

    

7. 


