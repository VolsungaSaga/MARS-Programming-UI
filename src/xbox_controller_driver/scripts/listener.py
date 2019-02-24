#usr/bin/env python

import rospy
from xbox_controller_driver.msg import ControllerState


def callback(data):
    rospy.loginfo(rospy.get_caller_id())
    print(data.normalizeRightY)
    print(data.normalizeLeftY)
def listener():

    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber("controller",ControllerState, callback)
    
    rospy.spin()


if __name__=='__main__':
    listener()
    
