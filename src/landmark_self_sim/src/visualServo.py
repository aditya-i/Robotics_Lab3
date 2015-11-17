#!/usr/bin/env python


import rospy
import math
import numpy
from std_msgs.msg import Float64
from landmark_self_sim.msg import landmarkLocation

global height
global distance
distance = 0.0
height = 0.0

def height(data):
	global distance
	global pub

	height = data.height
	print("height")	
	print(height)

	expo=-7.846*0.001*height
	distance = 13.5149 * math.exp(expo)	

	pub = rospy.Publisher('distance', Float64, queue_size = 1)
	pub.publish(distance)
	print(distance)
	rospy.sleep(1)
	


def main_loop():
	rospy.init_node('visualServo')
	rospy.Subscriber("fanboatLL", fanboatLL, reactiveControl)
	rospy.Subscriber('landmarkLocation', landmarkLocation, height)


	r = rospy.Rate(5)
	while not rospy.is_shutdown():
		r.sleep()

if __name__ == '__main__':
	main_loop()
