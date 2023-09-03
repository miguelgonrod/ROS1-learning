; Auto-generated. Do not edit!


(cl:in-package hrwros_week0_assignment-msg)


;//! \htmlinclude Dummy.msg.html

(cl:defclass <Dummy> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass Dummy (<Dummy>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Dummy>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Dummy)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrwros_week0_assignment-msg:<Dummy> is deprecated: use hrwros_week0_assignment-msg:Dummy instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Dummy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_week0_assignment-msg:name-val is deprecated.  Use hrwros_week0_assignment-msg:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Dummy>) ostream)
  "Serializes a message object of type '<Dummy>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Dummy>) istream)
  "Deserializes a message object of type '<Dummy>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Dummy>)))
  "Returns string type for a message object of type '<Dummy>"
  "hrwros_week0_assignment/Dummy")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Dummy)))
  "Returns string type for a message object of type 'Dummy"
  "hrwros_week0_assignment/Dummy")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Dummy>)))
  "Returns md5sum for a message object of type '<Dummy>"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Dummy)))
  "Returns md5sum for a message object of type 'Dummy"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Dummy>)))
  "Returns full string definition for message of type '<Dummy>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Dummy)))
  "Returns full string definition for message of type 'Dummy"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Dummy>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Dummy>))
  "Converts a ROS message object to a list"
  (cl:list 'Dummy
    (cl:cons ':name (name msg))
))
