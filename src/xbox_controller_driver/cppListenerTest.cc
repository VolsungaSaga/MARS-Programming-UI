#include "ros/ros.h"
#include "xbox_controller_driver/ControllerState.h"
#include <iostream>

void controllerCallBack(const xbox_controller_driver::ControllerState::ConstPtr &msg){
    //ROS_INFO("I heard: [%d]", msg->A);
    std::cout<<msg->normalizeLeftY<<", "<<msg->normalizeRightY<<"\n";
    std::cout<<(msg->normalizeLeftY)+msg->normalizeRightY<<"\n";
    
}

int main(int argc, char **argv){

    ros::init(argc, argv, "listener");

    ros::NodeHandle n;

    ros::Subscriber sub=n.subscribe("controller", 1000, controllerCallBack);
    
    
    
    ros::spin();
    
    return 0;
}

