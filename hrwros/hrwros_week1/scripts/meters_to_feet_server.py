#!/usr/bin/env python

from hrwros_msgs.srv import ConvertMeterToFeet, ConvertMeterToFeetRequest, ConvertMeterToFeetResponse
import rospy
import numpy as np

_CONVERSION_FACTOR_METERS_TO_FEET = 3.28

# Service callback function
def process_service_request(req):
    
    # Initiate the response message object
    res = ConvertMeterToFeetResponse()
    
    # Perform sanity check. Allow only positive real numbers.
    # Compose the response message accordingly.
    if(req.distance_meters < 0):
        res.success = False
        res.distance_feet = -np.inf # default error valuew
        
    else:
        res.distance_feet = _CONVERSION_FACTOR_METERS_TO_FEET * req.distance_meters
        res.success = True
        
        
    # return the response message
    return res

def meters_to_feet_server():
    # ROS node for the service server.
    rospy.init_node('meters_to_feet_server', anonymous=False)
    
    # create a ROS service type
    service = rospy.Service('meters_to_feet', ConvertMeterToFeet, process_service_request)
    
    # Log message about service availability.
    rospy.loginfo('Convert meters to feet service is ready.')
    rospy.spin()
    
if __name__ == "__main__":
    meters_to_feet_server()