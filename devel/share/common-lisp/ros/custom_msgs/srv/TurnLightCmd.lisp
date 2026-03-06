; Auto-generated. Do not edit!


(cl:in-package custom_msgs-srv)


;//! \htmlinclude TurnLightCmd-request.msg.html

(cl:defclass <TurnLightCmd-request> (roslisp-msg-protocol:ros-message)
  ((TurnLightEnable
    :reader TurnLightEnable
    :initarg :TurnLightEnable
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TurnLightCmd-request (<TurnLightCmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurnLightCmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurnLightCmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<TurnLightCmd-request> is deprecated: use custom_msgs-srv:TurnLightCmd-request instead.")))

(cl:ensure-generic-function 'TurnLightEnable-val :lambda-list '(m))
(cl:defmethod TurnLightEnable-val ((m <TurnLightCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:TurnLightEnable-val is deprecated.  Use custom_msgs-srv:TurnLightEnable instead.")
  (TurnLightEnable m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TurnLightCmd-request>)))
    "Constants for message type '<TurnLightCmd-request>"
  '((:TURNOFF . 0)
    (:TURNLEFT . 1)
    (:TURNRIGHT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TurnLightCmd-request)))
    "Constants for message type 'TurnLightCmd-request"
  '((:TURNOFF . 0)
    (:TURNLEFT . 1)
    (:TURNRIGHT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurnLightCmd-request>) ostream)
  "Serializes a message object of type '<TurnLightCmd-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TurnLightEnable)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurnLightCmd-request>) istream)
  "Deserializes a message object of type '<TurnLightCmd-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TurnLightEnable)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurnLightCmd-request>)))
  "Returns string type for a service object of type '<TurnLightCmd-request>"
  "custom_msgs/TurnLightCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurnLightCmd-request)))
  "Returns string type for a service object of type 'TurnLightCmd-request"
  "custom_msgs/TurnLightCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurnLightCmd-request>)))
  "Returns md5sum for a message object of type '<TurnLightCmd-request>"
  "322d87667a5cf45a7b0e59fea7572bbf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurnLightCmd-request)))
  "Returns md5sum for a message object of type 'TurnLightCmd-request"
  "322d87667a5cf45a7b0e59fea7572bbf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurnLightCmd-request>)))
  "Returns full string definition for message of type '<TurnLightCmd-request>"
  (cl:format cl:nil "#----------------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#      LCM_TurnLight 转向灯命令  0x0:Not Active:0x1：~%#                              TurnRight；0x2：TurnLeft;0x3:DoubleLight~%#----------------------------------------------------------------------~%~%#请求---------------------------------------------------------~%##定义赋值枚举~%uint8 TurnOff=0~%uint8 TurnLeft=1~%uint8 TurnRight=2~%~%#~%uint8 TurnLightEnable~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurnLightCmd-request)))
  "Returns full string definition for message of type 'TurnLightCmd-request"
  (cl:format cl:nil "#----------------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#      LCM_TurnLight 转向灯命令  0x0:Not Active:0x1：~%#                              TurnRight；0x2：TurnLeft;0x3:DoubleLight~%#----------------------------------------------------------------------~%~%#请求---------------------------------------------------------~%##定义赋值枚举~%uint8 TurnOff=0~%uint8 TurnLeft=1~%uint8 TurnRight=2~%~%#~%uint8 TurnLightEnable~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurnLightCmd-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurnLightCmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TurnLightCmd-request
    (cl:cons ':TurnLightEnable (TurnLightEnable msg))
))
;//! \htmlinclude TurnLightCmd-response.msg.html

(cl:defclass <TurnLightCmd-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TurnLightCmd-response (<TurnLightCmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurnLightCmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurnLightCmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<TurnLightCmd-response> is deprecated: use custom_msgs-srv:TurnLightCmd-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <TurnLightCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:res-val is deprecated.  Use custom_msgs-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurnLightCmd-response>) ostream)
  "Serializes a message object of type '<TurnLightCmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'res) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurnLightCmd-response>) istream)
  "Deserializes a message object of type '<TurnLightCmd-response>"
    (cl:setf (cl:slot-value msg 'res) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurnLightCmd-response>)))
  "Returns string type for a service object of type '<TurnLightCmd-response>"
  "custom_msgs/TurnLightCmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurnLightCmd-response)))
  "Returns string type for a service object of type 'TurnLightCmd-response"
  "custom_msgs/TurnLightCmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurnLightCmd-response>)))
  "Returns md5sum for a message object of type '<TurnLightCmd-response>"
  "322d87667a5cf45a7b0e59fea7572bbf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurnLightCmd-response)))
  "Returns md5sum for a message object of type 'TurnLightCmd-response"
  "322d87667a5cf45a7b0e59fea7572bbf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurnLightCmd-response>)))
  "Returns full string definition for message of type '<TurnLightCmd-response>"
  (cl:format cl:nil "#返回值-----------------------------------------------------------~%##定义赋值枚举~%bool res~%#控制字段~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurnLightCmd-response)))
  "Returns full string definition for message of type 'TurnLightCmd-response"
  (cl:format cl:nil "#返回值-----------------------------------------------------------~%##定义赋值枚举~%bool res~%#控制字段~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurnLightCmd-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurnLightCmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TurnLightCmd-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TurnLightCmd)))
  'TurnLightCmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TurnLightCmd)))
  'TurnLightCmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurnLightCmd)))
  "Returns string type for a service object of type '<TurnLightCmd>"
  "custom_msgs/TurnLightCmd")