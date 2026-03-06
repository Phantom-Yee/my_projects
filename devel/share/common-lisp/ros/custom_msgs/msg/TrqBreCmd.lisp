; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude TrqBreCmd.msg.html

(cl:defclass <TrqBreCmd> (roslisp-msg-protocol:ros-message)
  ((head
    :reader head
    :initarg :head
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (trq_enable
    :reader trq_enable
    :initarg :trq_enable
    :type cl:fixnum
    :initform 0)
   (trq_value_2
    :reader trq_value_2
    :initarg :trq_value_2
    :type cl:integer
    :initform 0)
   (trq_value_3
    :reader trq_value_3
    :initarg :trq_value_3
    :type cl:float
    :initform 0.0)
   (bre_enable
    :reader bre_enable
    :initarg :bre_enable
    :type cl:fixnum
    :initform 0)
   (bre_value
    :reader bre_value
    :initarg :bre_value
    :type cl:float
    :initform 0.0)
   (ACC_DecToStop
    :reader ACC_DecToStop
    :initarg :ACC_DecToStop
    :type cl:fixnum
    :initform 0)
   (ACC_Driveoff
    :reader ACC_Driveoff
    :initarg :ACC_Driveoff
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrqBreCmd (<TrqBreCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrqBreCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrqBreCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<TrqBreCmd> is deprecated: use custom_msgs-msg:TrqBreCmd instead.")))

(cl:ensure-generic-function 'head-val :lambda-list '(m))
(cl:defmethod head-val ((m <TrqBreCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:head-val is deprecated.  Use custom_msgs-msg:head instead.")
  (head m))

(cl:ensure-generic-function 'trq_enable-val :lambda-list '(m))
(cl:defmethod trq_enable-val ((m <TrqBreCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:trq_enable-val is deprecated.  Use custom_msgs-msg:trq_enable instead.")
  (trq_enable m))

(cl:ensure-generic-function 'trq_value_2-val :lambda-list '(m))
(cl:defmethod trq_value_2-val ((m <TrqBreCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:trq_value_2-val is deprecated.  Use custom_msgs-msg:trq_value_2 instead.")
  (trq_value_2 m))

(cl:ensure-generic-function 'trq_value_3-val :lambda-list '(m))
(cl:defmethod trq_value_3-val ((m <TrqBreCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:trq_value_3-val is deprecated.  Use custom_msgs-msg:trq_value_3 instead.")
  (trq_value_3 m))

(cl:ensure-generic-function 'bre_enable-val :lambda-list '(m))
(cl:defmethod bre_enable-val ((m <TrqBreCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:bre_enable-val is deprecated.  Use custom_msgs-msg:bre_enable instead.")
  (bre_enable m))

(cl:ensure-generic-function 'bre_value-val :lambda-list '(m))
(cl:defmethod bre_value-val ((m <TrqBreCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:bre_value-val is deprecated.  Use custom_msgs-msg:bre_value instead.")
  (bre_value m))

(cl:ensure-generic-function 'ACC_DecToStop-val :lambda-list '(m))
(cl:defmethod ACC_DecToStop-val ((m <TrqBreCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:ACC_DecToStop-val is deprecated.  Use custom_msgs-msg:ACC_DecToStop instead.")
  (ACC_DecToStop m))

(cl:ensure-generic-function 'ACC_Driveoff-val :lambda-list '(m))
(cl:defmethod ACC_Driveoff-val ((m <TrqBreCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:ACC_Driveoff-val is deprecated.  Use custom_msgs-msg:ACC_Driveoff instead.")
  (ACC_Driveoff m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrqBreCmd>) ostream)
  "Serializes a message object of type '<TrqBreCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'head) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trq_enable)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trq_value_2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'trq_value_2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'trq_value_2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'trq_value_2)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'trq_value_3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bre_enable)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bre_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ACC_DecToStop)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ACC_Driveoff)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrqBreCmd>) istream)
  "Deserializes a message object of type '<TrqBreCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'head) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trq_enable)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trq_value_2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'trq_value_2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'trq_value_2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'trq_value_2)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'trq_value_3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bre_enable)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bre_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ACC_DecToStop)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ACC_Driveoff)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrqBreCmd>)))
  "Returns string type for a message object of type '<TrqBreCmd>"
  "custom_msgs/TrqBreCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrqBreCmd)))
  "Returns string type for a message object of type 'TrqBreCmd"
  "custom_msgs/TrqBreCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrqBreCmd>)))
  "Returns md5sum for a message object of type '<TrqBreCmd>"
  "f4c067bce3a4adbe38f794b306a03fb3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrqBreCmd)))
  "Returns md5sum for a message object of type 'TrqBreCmd"
  "f4c067bce3a4adbe38f794b306a03fb3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrqBreCmd>)))
  "Returns full string definition for message of type '<TrqBreCmd>"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#----------------------------------------------------------------~%~%std_msgs/Header head~%~%#float32 DeAccReq      ~%#float32 AccReq~%#float32 SptReq~%~%uint8   trq_enable                    #发动机驱动扭矩是否使能~%uint32  trq_value_2                   #->>扭矩:所需扭矩值     #2号车使用~%float32 trq_value_3                   #->>扭矩:所需扭矩百分比  #3号车使用~%uint8   bre_enable                    #刹车是否使能~%float32 bre_value                     #刹车值~%uint8   ACC_DecToStop                 #ACC请求减速到停止 0x0: no demand; 0x1: demand 车子按自己的减速度平滑停车 不受发送的其他指令控制~%uint8   ACC_Driveoff                  #释放汽缸压力，必须与ACC_DecToStop配合使~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrqBreCmd)))
  "Returns full string definition for message of type 'TrqBreCmd"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#----------------------------------------------------------------~%~%std_msgs/Header head~%~%#float32 DeAccReq      ~%#float32 AccReq~%#float32 SptReq~%~%uint8   trq_enable                    #发动机驱动扭矩是否使能~%uint32  trq_value_2                   #->>扭矩:所需扭矩值     #2号车使用~%float32 trq_value_3                   #->>扭矩:所需扭矩百分比  #3号车使用~%uint8   bre_enable                    #刹车是否使能~%float32 bre_value                     #刹车值~%uint8   ACC_DecToStop                 #ACC请求减速到停止 0x0: no demand; 0x1: demand 车子按自己的减速度平滑停车 不受发送的其他指令控制~%uint8   ACC_Driveoff                  #释放汽缸压力，必须与ACC_DecToStop配合使~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrqBreCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'head))
     1
     4
     4
     1
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrqBreCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'TrqBreCmd
    (cl:cons ':head (head msg))
    (cl:cons ':trq_enable (trq_enable msg))
    (cl:cons ':trq_value_2 (trq_value_2 msg))
    (cl:cons ':trq_value_3 (trq_value_3 msg))
    (cl:cons ':bre_enable (bre_enable msg))
    (cl:cons ':bre_value (bre_value msg))
    (cl:cons ':ACC_DecToStop (ACC_DecToStop msg))
    (cl:cons ':ACC_Driveoff (ACC_Driveoff msg))
))
