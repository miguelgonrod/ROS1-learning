; Auto-generated. Do not edit!


(cl:in-package hrwros_msgs-srv)


;//! \htmlinclude ConvertMeterToFeet-request.msg.html

(cl:defclass <ConvertMeterToFeet-request> (roslisp-msg-protocol:ros-message)
  ((distance_meters
    :reader distance_meters
    :initarg :distance_meters
    :type cl:float
    :initform 0.0))
)

(cl:defclass ConvertMeterToFeet-request (<ConvertMeterToFeet-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConvertMeterToFeet-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConvertMeterToFeet-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrwros_msgs-srv:<ConvertMeterToFeet-request> is deprecated: use hrwros_msgs-srv:ConvertMeterToFeet-request instead.")))

(cl:ensure-generic-function 'distance_meters-val :lambda-list '(m))
(cl:defmethod distance_meters-val ((m <ConvertMeterToFeet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-srv:distance_meters-val is deprecated.  Use hrwros_msgs-srv:distance_meters instead.")
  (distance_meters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConvertMeterToFeet-request>) ostream)
  "Serializes a message object of type '<ConvertMeterToFeet-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_meters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConvertMeterToFeet-request>) istream)
  "Deserializes a message object of type '<ConvertMeterToFeet-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_meters) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConvertMeterToFeet-request>)))
  "Returns string type for a service object of type '<ConvertMeterToFeet-request>"
  "hrwros_msgs/ConvertMeterToFeetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConvertMeterToFeet-request)))
  "Returns string type for a service object of type 'ConvertMeterToFeet-request"
  "hrwros_msgs/ConvertMeterToFeetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConvertMeterToFeet-request>)))
  "Returns md5sum for a message object of type '<ConvertMeterToFeet-request>"
  "310609c29786ef3922a8f8517575f397")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConvertMeterToFeet-request)))
  "Returns md5sum for a message object of type 'ConvertMeterToFeet-request"
  "310609c29786ef3922a8f8517575f397")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConvertMeterToFeet-request>)))
  "Returns full string definition for message of type '<ConvertMeterToFeet-request>"
  (cl:format cl:nil "float64 distance_meters     # Request message: Distance in (m) to be converted to feet~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConvertMeterToFeet-request)))
  "Returns full string definition for message of type 'ConvertMeterToFeet-request"
  (cl:format cl:nil "float64 distance_meters     # Request message: Distance in (m) to be converted to feet~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConvertMeterToFeet-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConvertMeterToFeet-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ConvertMeterToFeet-request
    (cl:cons ':distance_meters (distance_meters msg))
))
;//! \htmlinclude ConvertMeterToFeet-response.msg.html

(cl:defclass <ConvertMeterToFeet-response> (roslisp-msg-protocol:ros-message)
  ((distance_feet
    :reader distance_feet
    :initarg :distance_feet
    :type cl:float
    :initform 0.0)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ConvertMeterToFeet-response (<ConvertMeterToFeet-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConvertMeterToFeet-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConvertMeterToFeet-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrwros_msgs-srv:<ConvertMeterToFeet-response> is deprecated: use hrwros_msgs-srv:ConvertMeterToFeet-response instead.")))

(cl:ensure-generic-function 'distance_feet-val :lambda-list '(m))
(cl:defmethod distance_feet-val ((m <ConvertMeterToFeet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-srv:distance_feet-val is deprecated.  Use hrwros_msgs-srv:distance_feet instead.")
  (distance_feet m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ConvertMeterToFeet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-srv:success-val is deprecated.  Use hrwros_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConvertMeterToFeet-response>) ostream)
  "Serializes a message object of type '<ConvertMeterToFeet-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_feet))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConvertMeterToFeet-response>) istream)
  "Deserializes a message object of type '<ConvertMeterToFeet-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_feet) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConvertMeterToFeet-response>)))
  "Returns string type for a service object of type '<ConvertMeterToFeet-response>"
  "hrwros_msgs/ConvertMeterToFeetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConvertMeterToFeet-response)))
  "Returns string type for a service object of type 'ConvertMeterToFeet-response"
  "hrwros_msgs/ConvertMeterToFeetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConvertMeterToFeet-response>)))
  "Returns md5sum for a message object of type '<ConvertMeterToFeet-response>"
  "310609c29786ef3922a8f8517575f397")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConvertMeterToFeet-response)))
  "Returns md5sum for a message object of type 'ConvertMeterToFeet-response"
  "310609c29786ef3922a8f8517575f397")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConvertMeterToFeet-response>)))
  "Returns full string definition for message of type '<ConvertMeterToFeet-response>"
  (cl:format cl:nil "float64 distance_feet       # Response message: distance in feet after conversion~%bool success                # response message: success or failure~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConvertMeterToFeet-response)))
  "Returns full string definition for message of type 'ConvertMeterToFeet-response"
  (cl:format cl:nil "float64 distance_feet       # Response message: distance in feet after conversion~%bool success                # response message: success or failure~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConvertMeterToFeet-response>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConvertMeterToFeet-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ConvertMeterToFeet-response
    (cl:cons ':distance_feet (distance_feet msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ConvertMeterToFeet)))
  'ConvertMeterToFeet-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ConvertMeterToFeet)))
  'ConvertMeterToFeet-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConvertMeterToFeet)))
  "Returns string type for a service object of type '<ConvertMeterToFeet>"
  "hrwros_msgs/ConvertMeterToFeet")