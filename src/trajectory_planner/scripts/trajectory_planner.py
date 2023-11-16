from spatialmath import * 
from spatialmath.base import * 
import numpy as np
import math
from scipy import linalg
from roboticstoolbox import *
import array
from math import pi
import rospy
from foreman_msg.msg import Command
from std_msgs.msg import Float64
from sensor_msgs.msg import JointState


def constructRobot():
    # qlim
    global ql 
    ql = [-pi, pi]
    # links
    l1 = DHLink(d = .1, a = 0, alpha = pi/2)
    l2 = DHLink(d= 0, a= .5, alpha= 0,offset=pi/2, qlim = ql)
    l3 = DHLink(d= 0, a= .5, alpha= 0, qlim = ql)
    l4 = DHLink(d= 0, a= .2, alpha= 0, qlim = ql)
    l5 = DHLink(d = 0, a = .2, alpha = 0, qlim = ql)
    # robot
    global robot 
    robot = DHRobot([l1, l2, l3, l4, l5], name= 'robot')
    #plt.close('all')

def newQRRMC(command):
    # condition joystick input
    velFactor = 0.1 # --> final ee velocity then: velFactor*joyInput where joyInput in [-1,1]
    preciseModeVelFactor = 0.5
    if command.preciseMode.data == 1:
        velX,velY,velZ = (command.x.data*velFactor*preciseModeVelFactor,
        command.y.data*velFactor*preciseModeVelFactor,
        command.z.data*velFactor*preciseModeVelFactor)
    else:
        velX,velY,velZ = (command.x.data*velFactor,
        command.y.data*velFactor,
        command.z.data*velFactor)

    # compute requisite joint velocities for the control 
    # of EITHER ee position or orientation (both perfectly = 
    # impossible due to 5 DoF robot):
    global q_next
    if command.eeOrientationMode.data == 0:
        ev = [velX,velY,velZ,0,0]
        J = robot.jacob0(q)
        J = np.delete(J,5,0)
        invJ = np.linalg.pinv(J)
        dq = invJ @ ev
        q_next = np.add(q,dq)
    
    else:
        rotationFactor = 10
        ev = [0,0,velX*rotationFactor,velY*rotationFactor,velZ*rotationFactor]
        J = robot.jacob0(q)
        J = np.delete(J, 2, axis=0) # neglect z-axis position-lock
        invJ = np.linalg.pinv(J)
        dq = invJ @ ev
        q_next = np.add(q,dq)
    
    # ensure satisfaction of qlim
    if inJointLimits(q_next): 
        # print("Joint velocities are: ", np.round(dq, 4))
        return q_next
    else: 
        # print("Requested joint velocity rejected due to contravention of robot's joint limits...")
        return q

def newQJM(command):
    # directly control angular positition of joint i:
    velFactor = 0.015
    preciseModeVelFactor = 0.5
    q_next = q
    if command.preciseMode.data == 1:
        if command.incrementQ.data == 1:
            q_next[command.targetJoint.data-1] = (q[command.targetJoint.data-1] +
            velFactor + preciseModeVelFactor)
        elif command.decrementQ.data == 1:
            q_next[command.targetJoint.data-1] = (q[command.targetJoint.data-1] -
            velFactor - preciseModeVelFactor)
    else:
        if command.incrementQ.data == 1:
            q_next[command.targetJoint.data-1] = (q[command.targetJoint.data-1] +
            velFactor + preciseModeVelFactor)
        elif command.decrementQ.data == 1:
            q_next[command.targetJoint.data-1] = (q[command.targetJoint.data-1] -
            velFactor - preciseModeVelFactor)
    # ensure next q in joint limits:
    if inJointLimits(q_next): return q_next
    else: return q

def inJointLimits(q_next):
    condition = lambda x: ql[0] <= x <= ql[1]
    if all(condition(x) for x in [q_next[1],q_next[2],q_next[3],q_next[4]]):
        return True
    else: return False

def nextQ(command):
    if command.jointMode.data == 0:
        return newQRRMC(command)
    else:
        return newQJM(command)

def processCommand(command):
    next_Q = nextQ(command)
    # make sure nextQ is congruent with q treatment 
    publish(next_Q)
    global q
    q = next_Q
    rospy.loginfo("Joint positions: %s",next_Q)

def publish(q):
    pubJoint1.publish(q[0])
    pubJoint2.publish(q[1])
    pubJoint3.publish(q[2])
    pubJoint4.publish(q[3])
    pubJoint5.publish(q[4])

def getQ(msg):
    pos = msg.position
    print("jointstate object: ",pos)
    nq =  np.array([pos[0],pos[1],pos[2],pos[3],pos[4]])
    q = nq

if __name__ == '__main__':
    constructRobot()
    # initial pose 
    global q
    q = np.array([.2,.4,.04,.12,.05])

    rospy.init_node('trajectory_planner')
    rospy.Subscriber("/command", Command, processCommand)########################################################################################
    #rospy.Subscriber("/robot/joint_states",JointState, getQ)

    # create joint-wise publishers:
    pubJoint1 = rospy.Publisher('/robot/joint_1_position_controller/command', 
                                  Float64, queue_size=2)
    pubJoint2 = rospy.Publisher('/robot/joint_2_position_controller/command', 
                                  Float64, queue_size=2)
    pubJoint3 = rospy.Publisher('/robot/joint_3_position_controller/command', 
                                  Float64, queue_size=2)
    pubJoint4 = rospy.Publisher('/robot/joint_4_position_controller/command', 
                                  Float64, queue_size=2)
    pubJoint5 = rospy.Publisher('/robot/joint_5_position_controller/command', 
                                  Float64, queue_size=2)
    publish(q)

    
    lastCommand = Command()
    lastCommand.preciseMode.data = False
    lastCommand.eeOrientationMode.data = False
    lastCommand.jointMode.data = False
    lastCommand.targetJoint.data = 0
    lastCommand.x.data = 0.0
    lastCommand.y.data = 0.0
    lastCommand.z.data = 0
    lastCommand.incrementQ.data = False
    lastCommand.decrementQ.data = False

    rate = rospy.Rate(5) 
    while not rospy.is_shutdown():
        #print("Value of q: ",q)
        #publish(q)
        rate.sleep()
