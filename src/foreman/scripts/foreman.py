import rospy
from sensor_msgs.msg import Joy
from foreman_msg.msg import Command

def computeCommand():#currentJoy):
    # ensure not first time callback function was called, if it was, define variables:
    global currentJoy
    if 'lastJoy' not in globals():
        global lastJoy
        lastJoy = currentJoy
        global currentJoint
        currentJoint = 1
        global lastCommand 
        lastCommand = Command()
        lastCommand.preciseMode.data = False
        lastCommand.eeOrientationMode.data = False
        lastCommand.jointMode.data = False
        lastCommand.targetJoint.data = currentJoint
        lastCommand.x.data = 0.0
        lastCommand.y.data = 0.0
        lastCommand.z.data = 0.0
        lastCommand.incrementQ.data = False
        lastCommand.decrementQ.data = False
        rospy.loginfo("Controller connected...")
        return lastCommand
    global command
    command = Command()

    # joint-control-mode?
    if wasPressed(lastJoy.buttons[0],currentJoy.buttons[0]):
        command.jointMode.data = lastCommand.jointMode.data ^ 1
        if command.jointMode.data == 1:
            rospy.loginfo("Entered joint-control mode.")
        else: rospy.loginfo("Left joint-control mode.")
    else: command.jointMode.data = lastCommand.jointMode.data

    # increment target joint:
    if wasPressed(lastJoy.buttons[7],currentJoy.buttons[7]) and lastCommand.jointMode.data == 1:
        if currentJoint < 5:
            currentJoint += 1
            rospy.loginfo("Controlling joint: %d", currentJoint)
        else: 
            currentJoint = 1
            rospy.loginfo("Controlling joint: %d", currentJoint)
    command.targetJoint.data  = currentJoint
    
    # precision-mode?
    if (wasPressed(lastJoy.buttons[15],currentJoy.buttons[15]) or
    wasPressed(lastJoy.buttons[5],currentJoy.buttons[5])):
        command.preciseMode.data = 1
        rospy.loginfo("Entered precision mode.")
    elif (wasPressed(lastJoy.buttons[5]^1,currentJoy.buttons[5]^1) or
    wasPressed(lastJoy.buttons[17],currentJoy.buttons[17])):
        command.preciseMode.data = 0
        rospy.loginfo("Left precision mode.")
    else: command.preciseMode.data = lastCommand.preciseMode.data
    
    # ee-orienation-mode? Note: cannot be in ee-orientation mode, nor 
    # should joysticks effect change, while in joint mode:
    if command.jointMode.data == 0:
        # ee-orientation-mode?
        if (wasPressed(lastJoy.buttons[16],currentJoy.buttons[16]) or 
        wasPressed(lastJoy.buttons[4],currentJoy.buttons[4])):
            command.eeOrientationMode.data = 1
            rospy.loginfo("Entered ee-orientation mode.")
        elif (wasPressed(lastJoy.buttons[4]^1,currentJoy.buttons[4]^1) or
        wasPressed(lastJoy.buttons[14],currentJoy.buttons[14])):
            command.eeOrientationMode.data = 0
            rospy.loginfo("Left ee-orientation mode.")
        else: command.eeOrientationMode.data = lastCommand.eeOrientationMode.data
        # set joystick and joint-mode q values:
        command.incrementQ.data = 0
        command.decrementQ.data = 0
        command.x.data = currentJoy.axes[0]
        command.y.data = -currentJoy.axes[1]
        command.z.data = currentJoy.axes[3]
    #elif currentJoy.axes
    else:
        # set joystick and joint-mode q values:
        command.incrementQ.data = currentJoy.buttons[6]
        command.decrementQ.data = currentJoy.buttons[4]
        command.x.data = 0.0
        command.y.data = 0.0
        command.z.data = 0.0

    #if not command == lastCommand:
    #pub.publish(command)

    lastJoy = currentJoy
    lastCommand = command
    return command

def wasPressed(b0,b1):
    if (b0 == 0 and b1 == 1):
        return 1
    else:
        return 0

subscribed = 0
def getJoy(msg):
    global currentJoy
    currentJoy = msg
    global subscribed
    subscribed = 1


if __name__ == '__main__':
    rospy.init_node('foreman')
    #rospy.Subscriber("/joy", Joy, computeCommand)
    rospy.Subscriber("/joy", Joy, getJoy)
    pub = rospy.Publisher("/command", Command, queue_size=2)


    while subscribed == 0: pass
    
    rate = rospy.Rate(5)  # 5 Hz
    while not rospy.is_shutdown():
        #lastCommand = Command()
        #lastCommand.preciseMode.data = False
        #lastCommand.eeOrientationMode.data = False
        #lastCommand.jointMode.data = False
        #lastCommand.targetJoint.data = 0
        #lastCommand.x.data = 0.0
        #lastCommand.y.data = 0.0
        #lastCommand.z.data = 0.0
        #astCommand.incrementQ.data = False
        #lastCommand.decrementQ.data = False
        newMessage = computeCommand()
        pub.publish(newMessage)
        rate.sleep()