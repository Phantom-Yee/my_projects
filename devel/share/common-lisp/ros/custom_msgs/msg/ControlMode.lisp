; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude ControlMode.msg.html

(cl:defclass <ControlMode> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type cl:fixnum
    :initform 0)
   (mode_type
    :reader mode_type
    :initarg :mode_type
    :type cl:fixnum
    :initform 0)
   (brake_enable
    :reader brake_enable
    :initarg :brake_enable
    :type cl:fixnum
    :initform 0)
   (brake_value
    :reader brake_value
    :initarg :brake_value
    :type cl:fixnum
    :initform 0)
   (speed_require
    :reader speed_require
    :initarg :speed_require
    :type cl:float
    :initform 0.0)
   (angle_require
    :reader angle_require
    :initarg :angle_require
    :type cl:float
    :initform 0.0))
)

(cl:defclass ControlMode (<ControlMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<ControlMode> is deprecated: use custom_msgs-msg:ControlMode instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <ControlMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:start-val is deprecated.  Use custom_msgs-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'mode_type-val :lambda-list '(m))
(cl:defmethod mode_type-val ((m <ControlMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:mode_type-val is deprecated.  Use custom_msgs-msg:mode_type instead.")
  (mode_type m))

(cl:ensure-generic-function 'brake_enable-val :lambda-list '(m))
(cl:defmethod brake_enable-val ((m <ControlMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:brake_enable-val is deprecated.  Use custom_msgs-msg:brake_enable instead.")
  (brake_enable m))

(cl:ensure-generic-function 'brake_value-val :lambda-list '(m))
(cl:defmethod brake_value-val ((m <ControlMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:brake_value-val is deprecated.  Use custom_msgs-msg:brake_value instead.")
  (brake_value m))

(cl:ensure-generic-function 'speed_require-val :lambda-list '(m))
(cl:defmethod speed_require-val ((m <ControlMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:speed_require-val is deprecated.  Use custom_msgs-msg:speed_require instead.")
  (speed_require m))

(cl:ensure-generic-function 'angle_require-val :lambda-list '(m))
(cl:defmethod angle_require-val ((m <ControlMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:angle_require-val is deprecated.  Use custom_msgs-msg:angle_require instead.")
  (angle_require m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlMode>) ostream)
  "Serializes a message object of type '<ControlMode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_enable)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_value)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_require))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle_require))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlMode>) istream)
  "Deserializes a message object of type '<ControlMode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_enable)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_value)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_require) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_require) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlMode>)))
  "Returns string type for a message object of type '<ControlMode>"
  "custom_msgs/ControlMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlMode)))
  "Returns string type for a message object of type 'ControlMode"
  "custom_msgs/ControlMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlMode>)))
  "Returns md5sum for a message object of type '<ControlMode>"
  "2c547e8f4a6c7926cc11dc380930bfb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlMode)))
  "Returns md5sum for a message object of type 'ControlMode"
  "2c547e8f4a6c7926cc11dc380930bfb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlMode>)))
  "Returns full string definition for message of type '<ControlMode>"
  (cl:format cl:nil "uint8      start                     #qidong~%uint8      mode_type                 #模式类型  00：无， 自动模式：（11：自动生成地图，12：已有地图） 遥控模式：20~%uint8      brake_enable              #制动使能  0：制动，1：可行驶~%uint8      brake_value               #制动值  ~%float32    speed_require             #速度要求~%float32    angle_require             #角度要求~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlMode)))
  "Returns full string definition for message of type 'ControlMode"
  (cl:format cl:nil "uint8      start                     #qidong~%uint8      mode_type                 #模式类型  00：无， 自动模式：（11：自动生成地图，12：已有地图） 遥控模式：20~%uint8      brake_enable              #制动使能  0：制动，1：可行驶~%uint8      brake_value               #制动值  ~%float32    speed_require             #速度要求~%float32    angle_require             #角度要求~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlMode>))
  (cl:+ 0
     1
     1
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlMode>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlMode
    (cl:cons ':start (start msg))
    (cl:cons ':mode_type (mode_type msg))
    (cl:cons ':brake_enable (brake_enable msg))
    (cl:cons ':brake_value (brake_value msg))
    (cl:cons ':speed_require (speed_require msg))
    (cl:cons ':angle_require (angle_require msg))
))
