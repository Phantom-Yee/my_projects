; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude SteeringCmd.msg.html

(cl:defclass <SteeringCmd> (roslisp-msg-protocol:ros-message)
  ((head
    :reader head
    :initarg :head
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (SteeringAngle
    :reader SteeringAngle
    :initarg :SteeringAngle
    :type cl:float
    :initform 0.0))
)

(cl:defclass SteeringCmd (<SteeringCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SteeringCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SteeringCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<SteeringCmd> is deprecated: use custom_msgs-msg:SteeringCmd instead.")))

(cl:ensure-generic-function 'head-val :lambda-list '(m))
(cl:defmethod head-val ((m <SteeringCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:head-val is deprecated.  Use custom_msgs-msg:head instead.")
  (head m))

(cl:ensure-generic-function 'SteeringAngle-val :lambda-list '(m))
(cl:defmethod SteeringAngle-val ((m <SteeringCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:SteeringAngle-val is deprecated.  Use custom_msgs-msg:SteeringAngle instead.")
  (SteeringAngle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SteeringCmd>) ostream)
  "Serializes a message object of type '<SteeringCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'head) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'SteeringAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SteeringCmd>) istream)
  "Deserializes a message object of type '<SteeringCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'head) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'SteeringAngle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SteeringCmd>)))
  "Returns string type for a message object of type '<SteeringCmd>"
  "custom_msgs/SteeringCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SteeringCmd)))
  "Returns string type for a message object of type 'SteeringCmd"
  "custom_msgs/SteeringCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SteeringCmd>)))
  "Returns md5sum for a message object of type '<SteeringCmd>"
  "31999a5ef8b7f03fb56a72329494e3d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SteeringCmd)))
  "Returns md5sum for a message object of type 'SteeringCmd"
  "31999a5ef8b7f03fb56a72329494e3d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SteeringCmd>)))
  "Returns full string definition for message of type '<SteeringCmd>"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#----------------------------------------------------------------~%~%std_msgs/Header head~%~%float32 SteeringAngle           #->>方向： 发送方向角度值~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SteeringCmd)))
  "Returns full string definition for message of type 'SteeringCmd"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#----------------------------------------------------------------~%~%std_msgs/Header head~%~%float32 SteeringAngle           #->>方向： 发送方向角度值~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SteeringCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'head))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SteeringCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'SteeringCmd
    (cl:cons ':head (head msg))
    (cl:cons ':SteeringAngle (SteeringAngle msg))
))
