; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude AEBCmd.msg.html

(cl:defclass <AEBCmd> (roslisp-msg-protocol:ros-message)
  ((head
    :reader head
    :initarg :head
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (AEB_enable
    :reader AEB_enable
    :initarg :AEB_enable
    :type cl:fixnum
    :initform 0)
   (ACC_DecToStop
    :reader ACC_DecToStop
    :initarg :ACC_DecToStop
    :type cl:fixnum
    :initform 0)
   (AEB_bre_value
    :reader AEB_bre_value
    :initarg :AEB_bre_value
    :type cl:float
    :initform 0.0))
)

(cl:defclass AEBCmd (<AEBCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AEBCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AEBCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<AEBCmd> is deprecated: use custom_msgs-msg:AEBCmd instead.")))

(cl:ensure-generic-function 'head-val :lambda-list '(m))
(cl:defmethod head-val ((m <AEBCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:head-val is deprecated.  Use custom_msgs-msg:head instead.")
  (head m))

(cl:ensure-generic-function 'AEB_enable-val :lambda-list '(m))
(cl:defmethod AEB_enable-val ((m <AEBCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:AEB_enable-val is deprecated.  Use custom_msgs-msg:AEB_enable instead.")
  (AEB_enable m))

(cl:ensure-generic-function 'ACC_DecToStop-val :lambda-list '(m))
(cl:defmethod ACC_DecToStop-val ((m <AEBCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:ACC_DecToStop-val is deprecated.  Use custom_msgs-msg:ACC_DecToStop instead.")
  (ACC_DecToStop m))

(cl:ensure-generic-function 'AEB_bre_value-val :lambda-list '(m))
(cl:defmethod AEB_bre_value-val ((m <AEBCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:AEB_bre_value-val is deprecated.  Use custom_msgs-msg:AEB_bre_value instead.")
  (AEB_bre_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AEBCmd>) ostream)
  "Serializes a message object of type '<AEBCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'head) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AEB_enable)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ACC_DecToStop)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'AEB_bre_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AEBCmd>) istream)
  "Deserializes a message object of type '<AEBCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'head) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AEB_enable)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ACC_DecToStop)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'AEB_bre_value) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AEBCmd>)))
  "Returns string type for a message object of type '<AEBCmd>"
  "custom_msgs/AEBCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AEBCmd)))
  "Returns string type for a message object of type 'AEBCmd"
  "custom_msgs/AEBCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AEBCmd>)))
  "Returns md5sum for a message object of type '<AEBCmd>"
  "4545b4dcbac8ee9bae5b6ac064ecbd8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AEBCmd)))
  "Returns md5sum for a message object of type 'AEBCmd"
  "4545b4dcbac8ee9bae5b6ac064ecbd8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AEBCmd>)))
  "Returns full string definition for message of type '<AEBCmd>"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#----------------------------------------------------------------~%~%std_msgs/Header head~%~%uint8   AEB_enable                 #AEB： 减速请求   0x0: no demand;0x1:~%uint8   ACC_DecToStop              #ACC请求减速到停止 0x0: no demand; 0x1: demand~%float32 AEB_bre_value              #AEB目标减速度  【-16,16】~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AEBCmd)))
  "Returns full string definition for message of type 'AEBCmd"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#----------------------------------------------------------------~%~%std_msgs/Header head~%~%uint8   AEB_enable                 #AEB： 减速请求   0x0: no demand;0x1:~%uint8   ACC_DecToStop              #ACC请求减速到停止 0x0: no demand; 0x1: demand~%float32 AEB_bre_value              #AEB目标减速度  【-16,16】~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AEBCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'head))
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AEBCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'AEBCmd
    (cl:cons ':head (head msg))
    (cl:cons ':AEB_enable (AEB_enable msg))
    (cl:cons ':ACC_DecToStop (ACC_DecToStop msg))
    (cl:cons ':AEB_bre_value (AEB_bre_value msg))
))
