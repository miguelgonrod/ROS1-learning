;; Auto-generated. Do not edit!


(when (boundp 'hrwros_msgs::ConvertMeterToFeet)
  (if (not (find-package "HRWROS_MSGS"))
    (make-package "HRWROS_MSGS"))
  (shadow 'ConvertMeterToFeet (find-package "HRWROS_MSGS")))
(unless (find-package "HRWROS_MSGS::CONVERTMETERTOFEET")
  (make-package "HRWROS_MSGS::CONVERTMETERTOFEET"))
(unless (find-package "HRWROS_MSGS::CONVERTMETERTOFEETREQUEST")
  (make-package "HRWROS_MSGS::CONVERTMETERTOFEETREQUEST"))
(unless (find-package "HRWROS_MSGS::CONVERTMETERTOFEETRESPONSE")
  (make-package "HRWROS_MSGS::CONVERTMETERTOFEETRESPONSE"))

(in-package "ROS")





(defclass hrwros_msgs::ConvertMeterToFeetRequest
  :super ros::object
  :slots (_distance_meters ))

(defmethod hrwros_msgs::ConvertMeterToFeetRequest
  (:init
   (&key
    ((:distance_meters __distance_meters) 0.0)
    )
   (send-super :init)
   (setq _distance_meters (float __distance_meters))
   self)
  (:distance_meters
   (&optional __distance_meters)
   (if __distance_meters (setq _distance_meters __distance_meters)) _distance_meters)
  (:serialization-length
   ()
   (+
    ;; float64 _distance_meters
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance_meters
       (sys::poke _distance_meters (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance_meters
     (setq _distance_meters (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass hrwros_msgs::ConvertMeterToFeetResponse
  :super ros::object
  :slots (_distance_feet _success ))

(defmethod hrwros_msgs::ConvertMeterToFeetResponse
  (:init
   (&key
    ((:distance_feet __distance_feet) 0.0)
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _distance_feet (float __distance_feet))
   (setq _success __success)
   self)
  (:distance_feet
   (&optional __distance_feet)
   (if __distance_feet (setq _distance_feet __distance_feet)) _distance_feet)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; float64 _distance_feet
    8
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance_feet
       (sys::poke _distance_feet (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance_feet
     (setq _distance_feet (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass hrwros_msgs::ConvertMeterToFeet
  :super ros::object
  :slots ())

(setf (get hrwros_msgs::ConvertMeterToFeet :md5sum-) "310609c29786ef3922a8f8517575f397")
(setf (get hrwros_msgs::ConvertMeterToFeet :datatype-) "hrwros_msgs/ConvertMeterToFeet")
(setf (get hrwros_msgs::ConvertMeterToFeet :request) hrwros_msgs::ConvertMeterToFeetRequest)
(setf (get hrwros_msgs::ConvertMeterToFeet :response) hrwros_msgs::ConvertMeterToFeetResponse)

(defmethod hrwros_msgs::ConvertMeterToFeetRequest
  (:response () (instance hrwros_msgs::ConvertMeterToFeetResponse :init)))

(setf (get hrwros_msgs::ConvertMeterToFeetRequest :md5sum-) "310609c29786ef3922a8f8517575f397")
(setf (get hrwros_msgs::ConvertMeterToFeetRequest :datatype-) "hrwros_msgs/ConvertMeterToFeetRequest")
(setf (get hrwros_msgs::ConvertMeterToFeetRequest :definition-)
      "float64 distance_meters     # Request message: Distance in (m) to be converted to feet
---
float64 distance_feet       # Response message: distance in feet after conversion
bool success                # response message: success or failure
")

(setf (get hrwros_msgs::ConvertMeterToFeetResponse :md5sum-) "310609c29786ef3922a8f8517575f397")
(setf (get hrwros_msgs::ConvertMeterToFeetResponse :datatype-) "hrwros_msgs/ConvertMeterToFeetResponse")
(setf (get hrwros_msgs::ConvertMeterToFeetResponse :definition-)
      "float64 distance_meters     # Request message: Distance in (m) to be converted to feet
---
float64 distance_feet       # Response message: distance in feet after conversion
bool success                # response message: success or failure
")



(provide :hrwros_msgs/ConvertMeterToFeet "310609c29786ef3922a8f8517575f397")


