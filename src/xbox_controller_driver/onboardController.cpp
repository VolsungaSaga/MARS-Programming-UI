//#define Phoenix_No_WPI // remove WPI dependencies
#include "include/ctre/Phoenix.h"
#include "include/ctre/phoenix/platform/Platform.h"
#include "include/ctre/phoenix/unmanaged/Unmanaged.h"
#include <string>
#include <iostream>
#include <chrono>
#include <thread>

#include <unistd.h>
#include "ros/ros.h"
#include "xbox_controller_driver/ControllerState.h"

using namespace ctre::phoenix;
using namespace ctre::phoenix::platform;
using namespace ctre::phoenix::motorcontrol;
using namespace ctre::phoenix::motorcontrol::can;

/* make some talons for drive train */
TalonSRX talLeft(1);
TalonSRX talRght(0);

void initDrive()
{
	/* both talons should blink green when driving forward */
	talRght.SetInverted(true);
}
void drive(double fwd, double turn)
{
	double left = fwd - turn;
	double rght = fwd + turn; /* positive turn means turn robot LEFT */

	talLeft.Set(ControlMode::PercentOutput, left);
	talRght.Set(ControlMode::PercentOutput, rght);
}

void sleepApp(int ms)
{
	std::this_thread::sleep_for(std::chrono::milliseconds(ms));
}
//the main piece
void controllerCallBack(const xbox_controller_driver::ControllerState::ConstPtr& msg){
	//ROS_INFO("I heard: [%d]", msg->A;
    //handles the input as doing this runs in a loop
    

}
int main(int argc, char **argv){
    std::string interface;
    interface="can0";
    ctre::phoenix::platform::can::SetCANInterface(interface.c_str());
    
    initDrive();
    ros::init(argc, argv, "listener");
    ros::NodeHandle n;

    drive(0,0);
    ros::Subscriber sub=n.subscribe("controller", 1000, controllerCallBack);

    ros::spin();

    return 0;

}
