; Auto-generated. Do not edit!


(cl:in-package custom_msgs-srv)


;//! \htmlinclude WipersCmd-request.msg.html

(cl:defclass <WipersCmd-request> (roslisp-msg-protocol:ros-message)
  ((WipersEnable
    :reader WipersEnable
    :initarg :WipersEnable
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WipersCmd-request (<WipersCmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WipersCmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WipersCmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<WipersCmd-request> is deprecated: use custom_msgs-srv:WipersCmd-request instead.")))

(cl:ensure-generic-function 'WipersEnable-val :lambda-list '(m))
(cl:defmethod WipersEnable-val ((m <WipersCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:WipersEnable-val is deprecated.  Use custom_msgs-srv:WipersEnable instead.")
  (WipersEnable m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WipersCmd-request>)))
    "Constants for message type '<WipersCmd-request>"
  '((:TURNOFF . 0)
    (:LOWSPEED . 6)
    (:HIGHSPEED . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WipersCmd-request)))
    "Constants for message type 'WipersCmd-request"
  '((:TURNOFF . 0)
    (:LOWSPEED . 6)
    (:HIGHSPEED . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WipersCmd-request>) ostream)
  "Serializes a message object of type '<WipersCmd-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WipersEnable)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WipersCmd-request>) istream)
  "Deserializes a message object of type '<WipersCmd-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WipersEnable)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WipersCmd-request>)))
  "Returns string type for a service object of type '<WipersCmd-request>"
  "custom_msgs/WipersCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WipersCmd-request)))
  "Returns string type for a service object of type 'WipersCmd-request"
  "custom_msgs/WipersCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WipersCmd-request>)))
  "Returns md5sum for a message object of type '<WipersCmd-request>"
  "fcb46d2085dd0f54813d4da9f776b2e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WipersCmd-request)))
  "Returns md5sum for a message object of type 'WipersCmd-request"
  "fcb46d2085dd0f54813d4da9f776b2e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WipersCmd-request>)))
  "Returns full string definition for message of type '<WipersCmd-request>"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#      BCM BCM_Wipers 雨刮控制~%#         0：停~%#         6：低速刮刷~%#         7：高速刮刷~%#----------------------------------------------------------------~%~%#请求---------------------------------------------------------~%##定义赋值枚举~%uint8 TurnOff=0~%uint8 LowSpeed=6~%uint8 HighSpeed=7~%#~%uint8 WipersEnable   ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WipersCmd-request)))
  "Returns full string definition for message of type 'WipersCmd-request"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#      BCM BCM_Wipers 雨刮控制~%#         0：停~%#         6：低速刮刷~%#         7：高速刮刷~%#----------------------------------------------------------------~%~%#请求---------------------------------------------------------~%##定义赋值枚举~%uint8 TurnOff=0~%uint8 LowSpeed=6~%uint8 HighSpeed=7~%#~%uint8 WipersEnable   ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WipersCmd-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WipersCmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WipersCmd-request
    (cl:cons ':WipersEnable (WipersEnable msg))
))
;//! \htmlinclude WipersCmd-response.msg.html

(cl:defclass <WipersCmd-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WipersCmd-response (<WipersCmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WipersCmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WipersCmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<WipersCmd-response> is deprecated: use custom_msgs-srv:WipersCmd-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <WipersCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:res-val is deprecated.  Use custom_msgs-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WipersCmd-response>) ostream)
  "Serializes a message object of type '<WipersCmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'res) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WipersCmd-response>) istream)
  "Deserializes a message object of type '<WipersCmd-response>"
    (cl:setf (cl:slot-value msg 'res) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WipersCmd-response>)))
  "Returns string type for a service object of type '<WipersCmd-response>"
  "custom_msgs/WipersCmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WipersCmd-response)))
  "Returns string type for a service object of type 'WipersCmd-response"
  "custom_msgs/WipersCmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WipersCmd-response>)))
  "Returns md5sum for a message object of type '<WipersCmd-response>"
  "fcb46d2085dd0f54813d4da9f776b2e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WipersCmd-response)))
  "Returns md5sum for a message object of type 'WipersCmd-response"
  "fcb46d2085dd0f54813d4da9f776b2e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WipersCmd-response>)))
  "Returns full string definition for message of type '<WipersCmd-response>"
  (cl:format cl:nil "#返回值-----------------------------------------------------------~%##定义赋值枚举~%bool res~%#控制字段~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WipersCmd-response)))
  "Returns full string definition for message of type 'WipersCmd-response"
  (cl:format cl:nil "#返回值-----------------------------------------------------------~%##定义赋值枚举~%bool res~%#控制字段~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WipersCmd-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WipersCmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WipersCmd-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WipersCmd)))
  'WipersCmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WipersCmd)))
  'WipersCmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WipersCmd)))
  "Returns string type for a service object of type '<WipersCmd>"
  "custom_msgs/WipersCmd")