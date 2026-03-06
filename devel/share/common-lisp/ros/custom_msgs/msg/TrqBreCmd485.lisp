; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude TrqBreCmd485.msg.html

(cl:defclass <TrqBreCmd485> (roslisp-msg-protocol:ros-message)
  ((head
    :reader head
    :initarg :head
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cmd_type
    :reader cmd_type
    :initarg :cmd_type
    :type cl:fixnum
    :initform 0)
   (pay_load
    :reader pay_load
    :initarg :pay_load
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrqBreCmd485 (<TrqBreCmd485>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrqBreCmd485>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrqBreCmd485)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<TrqBreCmd485> is deprecated: use custom_msgs-msg:TrqBreCmd485 instead.")))

(cl:ensure-generic-function 'head-val :lambda-list '(m))
(cl:defmethod head-val ((m <TrqBreCmd485>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:head-val is deprecated.  Use custom_msgs-msg:head instead.")
  (head m))

(cl:ensure-generic-function 'cmd_type-val :lambda-list '(m))
(cl:defmethod cmd_type-val ((m <TrqBreCmd485>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:cmd_type-val is deprecated.  Use custom_msgs-msg:cmd_type instead.")
  (cmd_type m))

(cl:ensure-generic-function 'pay_load-val :lambda-list '(m))
(cl:defmethod pay_load-val ((m <TrqBreCmd485>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:pay_load-val is deprecated.  Use custom_msgs-msg:pay_load instead.")
  (pay_load m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrqBreCmd485>) ostream)
  "Serializes a message object of type '<TrqBreCmd485>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'head) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pay_load)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrqBreCmd485>) istream)
  "Deserializes a message object of type '<TrqBreCmd485>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'head) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pay_load)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrqBreCmd485>)))
  "Returns string type for a message object of type '<TrqBreCmd485>"
  "custom_msgs/TrqBreCmd485")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrqBreCmd485)))
  "Returns string type for a message object of type 'TrqBreCmd485"
  "custom_msgs/TrqBreCmd485")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrqBreCmd485>)))
  "Returns md5sum for a message object of type '<TrqBreCmd485>"
  "be77f276997429f5059b00917c72a649")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrqBreCmd485)))
  "Returns md5sum for a message object of type 'TrqBreCmd485"
  "be77f276997429f5059b00917c72a649")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrqBreCmd485>)))
  "Returns full string definition for message of type '<TrqBreCmd485>"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#----------------------------------------------------------------~%~%std_msgs/Header head~%~%uint8   cmd_type                  #ming ling zi~%uint8   pay_load                  #->>zai he: ming ling zi dui ying       ~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrqBreCmd485)))
  "Returns full string definition for message of type 'TrqBreCmd485"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#----------------------------------------------------------------~%~%std_msgs/Header head~%~%uint8   cmd_type                  #ming ling zi~%uint8   pay_load                  #->>zai he: ming ling zi dui ying       ~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrqBreCmd485>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'head))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrqBreCmd485>))
  "Converts a ROS message object to a list"
  (cl:list 'TrqBreCmd485
    (cl:cons ':head (head msg))
    (cl:cons ':cmd_type (cmd_type msg))
    (cl:cons ':pay_load (pay_load msg))
))
