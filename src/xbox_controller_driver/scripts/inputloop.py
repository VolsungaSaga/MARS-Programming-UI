#!/user/bin/env python


#to run this program, you'll want to add "Defaults env_keep+="PYTHONPATH" to your sudoers file

#you'll also need to run this program as root either by switching to root with "su root" or by using the command "sudo python inputloopy.py"

#most of the time, you'll have to unplug and replug the controller back into the virtual machine between instances of this program.


import rospy
import xboxmod
import math
from xbox_controller_driver.msg import Tank 
from std_msgs.msg import String
import sys

#Try 2752 as ratio with 8000 as deadzone
def angle_to_tank(angle):
    if angle > 3*math.pi/2:
        return (lerp(-1, 1, 2*angle/math.pi - 3), -1);
    elif angle > math.pi:
        return (-1, lerp(1, -1, 2*angle/math.pi - 2))
    elif angle > math.pi/2:
        return (lerp(1, -1, 2*angle/math.pi - 1), 1);
    else:
        return (1, lerp(-1, 1, 2*angle/math.pi))
        

def lerp(start, end, index):
    return start*(1 - index) + end*index;

#returns angle in radians
def to_angle (x, y):
    if (x == -32768):
        x = -32767;
    if (y == -32768):
        y = -32767;

    angle = math.acos(x/32767);
    if (y < 0):
        angle += math.pi;

    return angle;

def power_level(x, y, levels, deadzone = 8000):
    if (x == -32768):
        x = -32767;
    if (y == -32768):
        y = -32767;

    distance = math.sqrt(x**2 + y**2) - deadzone;
    if distance < 0:
        return 0;
    return math.ceil(levels * distance / (2**15 - 1));




#attempts to work Sean's code into a ros publisher
controller = xboxmod.Joystick();
if __name__=="__main__":
    pub=rospy.Publisher('controller', Tank,queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate=rospy.Rate(10)
    try:

        while not rospy.is_shutdown():
            
            while True:
                controller.refresh();
                if(controller.Back()):
                    controller.close()
                    sys.exit()
                x=controller.leftX()
                y=controller.rightX()
                powerLevel=power_level(x,y,8)
#                tankTuple=tuple(powerLevel*x for x in angle_to_tank(to_angle(x,y)))
                tank_msg=Tank()
                tank_msg.battery=powerLevel
                tank_msg.angle=angle_to_tank(to_angle(x,y))
                
                rospy.loginfo(tank_msg)
                pub.publish(tank_msg)
                rate.sleep()
    except rospy.ROSInterruptException:
        print('InterruptException')
        controller.close()
            

controller.close()

