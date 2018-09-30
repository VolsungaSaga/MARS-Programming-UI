import xboxmod
import math


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



controller = xboxmod.Joystick();

while True:
    controller.refresh();
    if (controller.Back()):
        break;

    #Handle inputs
    #Convert left stick input
    x = controller.leftX();
    y = controller.rightX();
    powerLevel = power_level(x,y,8);
    tankTuple = tuple(powerLevel*x for x in angle_to_tank(to_angle(x, y)));

controller.close();