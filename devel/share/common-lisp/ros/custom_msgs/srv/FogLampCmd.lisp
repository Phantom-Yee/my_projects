; Auto-generated. Do not edit!


(cl:in-package custom_msgs-srv)


;//! \htmlinclude FogLampCmd-request.msg.html

(cl:defclass <FogLampCmd-request> (roslisp-msg-protocol:ros-message)
  ((FrontFogLamp
    :reader FrontFogLamp
    :initarg :FrontFogLamp
    :type cl:fixnum
    :initform 0)
   (RearFogLamps
    :reader RearFogLamps
    :initarg :RearFogLamps
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FogLampCmd-request (<FogLampCmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FogLampCmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FogLampCmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<FogLampCmd-request> is deprecated: use custom_msgs-srv:FogLampCmd-request instead.")))

(cl:ensure-generic-function 'FrontFogLamp-val :lambda-list '(m))
(cl:defmethod FrontFogLamp-val ((m <FogLampCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:FrontFogLamp-val is deprecated.  Use custom_msgs-srv:FrontFogLamp instead.")
  (FrontFogLamp m))

(cl:ensure-generic-function 'RearFogLamps-val :lambda-list '(m))
(cl:defmethod RearFogLamps-val ((m <FogLampCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:RearFogLamps-val is deprecated.  Use custom_msgs-srv:RearFogLamps instead.")
  (RearFogLamps m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FogLampCmd-request>)))
    "Constants for message type '<FogLampCmd-request>"
  '((:TURNOFF . 0)
    (:TURNON . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FogLampCmd-request)))
    "Constants for message type 'FogLampCmd-request"
  '((:TURNOFF . 0)
    (:TURNON . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FogLampCmd-request>) ostream)
  "Serializes a message object of type '<FogLampCmd-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FrontFogLamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RearFogLamps)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FogLampCmd-request>) istream)
  "Deserializes a message object of type '<FogLampCmd-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FrontFogLamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RearFogLamps)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FogLampCmd-request>)))
  "Returns string type for a service object of type '<FogLampCmd-request>"
  "custom_msgs/FogLampCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FogLampCmd-request)))
  "Returns string type for a service object of type 'FogLampCmd-request"
  "custom_msgs/FogLampCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FogLampCmd-request>)))
  "Returns md5sum for a message object of type '<FogLampCmd-request>"
  "fbd437971ce67472818057cd942311e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FogLampCmd-request)))
  "Returns md5sum for a message object of type 'FogLampCmd-request"
  "fbd437971ce67472818057cd942311e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FogLampCmd-request>)))
  "Returns full string definition for message of type '<FogLampCmd-request>"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#      BCM LCM_FrontFogLamps  前雾灯命令 0x0:Turn Off;0x1:Turn On~%#          LCM_RearFogLamps   后雾灯命令 0x0:Turn Off;0x1:Turn On~%#----------------------------------------------------------------~%~%#请求---------------------------------------------------------~%##定义赋值枚举~%uint8 TurnOff=0~%uint8 TurnOn=1~%#~%uint8 FrontFogLamp~%uint8 RearFogLamps ~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FogLampCmd-request)))
  "Returns full string definition for message of type 'FogLampCmd-request"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#      BCM LCM_FrontFogLamps  前雾灯命令 0x0:Turn Off;0x1:Turn On~%#          LCM_RearFogLamps   后雾灯命令 0x0:Turn Off;0x1:Turn On~%#----------------------------------------------------------------~%~%#请求---------------------------------------------------------~%##定义赋值枚举~%uint8 TurnOff=0~%uint8 TurnOn=1~%#~%uint8 FrontFogLamp~%uint8 RearFogLamps ~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FogLampCmd-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FogLampCmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FogLampCmd-request
    (cl:cons ':FrontFogLamp (FrontFogLamp msg))
    (cl:cons ':RearFogLamps (RearFogLamps msg))
))
;//! \htmlinclude FogLampCmd-response.msg.html

(cl:defclass <FogLampCmd-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass FogLampCmd-response (<FogLampCmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FogLampCmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FogLampCmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<FogLampCmd-response> is deprecated: use custom_msgs-srv:FogLampCmd-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <FogLampCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:res-val is deprecated.  Use custom_msgs-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FogLampCmd-response>) ostream)
  "Serializes a message object of type '<FogLampCmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'res) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FogLampCmd-response>) istream)
  "Deserializes a message object of type '<FogLampCmd-response>"
    (cl:setf (cl:slot-value msg 'res) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FogLampCmd-response>)))
  "Returns string type for a service object of type '<FogLampCmd-response>"
  "custom_msgs/FogLampCmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FogLampCmd-response)))
  "Returns string type for a service object of type 'FogLampCmd-response"
  "custom_msgs/FogLampCmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FogLampCmd-response>)))
  "Returns md5sum for a message object of type '<FogLampCmd-response>"
  "fbd437971ce67472818057cd942311e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FogLampCmd-response)))
  "Returns md5sum for a message object of type 'FogLampCmd-response"
  "fbd437971ce67472818057cd942311e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FogLampCmd-response>)))
  "Returns full string definition for message of type '<FogLampCmd-response>"
  (cl:format cl:nil "#返回值-----------------------------------------------------------~%##定义赋值枚举~%bool res~%#控制字段~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FogLampCmd-response)))
  "Returns full string definition for message of type 'FogLampCmd-response"
  (cl:format cl:nil "#返回值-----------------------------------------------------------~%##定义赋值枚举~%bool res~%#控制字段~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FogLampCmd-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FogLampCmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FogLampCmd-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FogLampCmd)))
  'FogLampCmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FogLampCmd)))
  'FogLampCmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FogLampCmd)))
  "Returns string type for a service object of type '<FogLampCmd>"
  "custom_msgs/FogLampCmd")