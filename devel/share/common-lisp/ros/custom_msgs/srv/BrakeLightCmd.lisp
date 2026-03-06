; Auto-generated. Do not edit!


(cl:in-package custom_msgs-srv)


;//! \htmlinclude BrakeLightCmd-request.msg.html

(cl:defclass <BrakeLightCmd-request> (roslisp-msg-protocol:ros-message)
  ((BrakeLightEnable
    :reader BrakeLightEnable
    :initarg :BrakeLightEnable
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BrakeLightCmd-request (<BrakeLightCmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeLightCmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeLightCmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<BrakeLightCmd-request> is deprecated: use custom_msgs-srv:BrakeLightCmd-request instead.")))

(cl:ensure-generic-function 'BrakeLightEnable-val :lambda-list '(m))
(cl:defmethod BrakeLightEnable-val ((m <BrakeLightCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:BrakeLightEnable-val is deprecated.  Use custom_msgs-srv:BrakeLightEnable instead.")
  (BrakeLightEnable m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BrakeLightCmd-request>)))
    "Constants for message type '<BrakeLightCmd-request>"
  '((:BRAKEOFF . 0)
    (:BRAKEON . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BrakeLightCmd-request)))
    "Constants for message type 'BrakeLightCmd-request"
  '((:BRAKEOFF . 0)
    (:BRAKEON . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeLightCmd-request>) ostream)
  "Serializes a message object of type '<BrakeLightCmd-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BrakeLightEnable)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeLightCmd-request>) istream)
  "Deserializes a message object of type '<BrakeLightCmd-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BrakeLightEnable)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeLightCmd-request>)))
  "Returns string type for a service object of type '<BrakeLightCmd-request>"
  "custom_msgs/BrakeLightCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeLightCmd-request)))
  "Returns string type for a service object of type 'BrakeLightCmd-request"
  "custom_msgs/BrakeLightCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeLightCmd-request>)))
  "Returns md5sum for a message object of type '<BrakeLightCmd-request>"
  "019a843542c6ec9330a3c43d4e701d28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeLightCmd-request)))
  "Returns md5sum for a message object of type 'BrakeLightCmd-request"
  "019a843542c6ec9330a3c43d4e701d28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeLightCmd-request>)))
  "Returns full string definition for message of type '<BrakeLightCmd-request>"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#      BCM LCM_LowLight  近光灯命令   0x0:TurnOff 0x1：Turn On；~%#                                   0x2：Upanddown;0x3:Stop~%#          LCM_HeadLight 远光灯命令  0x0:Turn Off;0x1:Turn On~%#----------------------------------------------------------------~%~%#请求---------------------------------------------------------~%##定义赋值枚举~%uint8 BrakeOff=0~%uint8 BrakeOn=1~%#控制字段~%uint8 BrakeLightEnable~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeLightCmd-request)))
  "Returns full string definition for message of type 'BrakeLightCmd-request"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#      BCM LCM_LowLight  近光灯命令   0x0:TurnOff 0x1：Turn On；~%#                                   0x2：Upanddown;0x3:Stop~%#          LCM_HeadLight 远光灯命令  0x0:Turn Off;0x1:Turn On~%#----------------------------------------------------------------~%~%#请求---------------------------------------------------------~%##定义赋值枚举~%uint8 BrakeOff=0~%uint8 BrakeOn=1~%#控制字段~%uint8 BrakeLightEnable~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeLightCmd-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeLightCmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeLightCmd-request
    (cl:cons ':BrakeLightEnable (BrakeLightEnable msg))
))
;//! \htmlinclude BrakeLightCmd-response.msg.html

(cl:defclass <BrakeLightCmd-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BrakeLightCmd-response (<BrakeLightCmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeLightCmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeLightCmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<BrakeLightCmd-response> is deprecated: use custom_msgs-srv:BrakeLightCmd-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <BrakeLightCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:res-val is deprecated.  Use custom_msgs-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeLightCmd-response>) ostream)
  "Serializes a message object of type '<BrakeLightCmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'res) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeLightCmd-response>) istream)
  "Deserializes a message object of type '<BrakeLightCmd-response>"
    (cl:setf (cl:slot-value msg 'res) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeLightCmd-response>)))
  "Returns string type for a service object of type '<BrakeLightCmd-response>"
  "custom_msgs/BrakeLightCmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeLightCmd-response)))
  "Returns string type for a service object of type 'BrakeLightCmd-response"
  "custom_msgs/BrakeLightCmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeLightCmd-response>)))
  "Returns md5sum for a message object of type '<BrakeLightCmd-response>"
  "019a843542c6ec9330a3c43d4e701d28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeLightCmd-response)))
  "Returns md5sum for a message object of type 'BrakeLightCmd-response"
  "019a843542c6ec9330a3c43d4e701d28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeLightCmd-response>)))
  "Returns full string definition for message of type '<BrakeLightCmd-response>"
  (cl:format cl:nil "#返回值-----------------------------------------------------------~%##定义赋值枚举~%bool res~%#控制字段~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeLightCmd-response)))
  "Returns full string definition for message of type 'BrakeLightCmd-response"
  (cl:format cl:nil "#返回值-----------------------------------------------------------~%##定义赋值枚举~%bool res~%#控制字段~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeLightCmd-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeLightCmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeLightCmd-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BrakeLightCmd)))
  'BrakeLightCmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BrakeLightCmd)))
  'BrakeLightCmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeLightCmd)))
  "Returns string type for a service object of type '<BrakeLightCmd>"
  "custom_msgs/BrakeLightCmd")