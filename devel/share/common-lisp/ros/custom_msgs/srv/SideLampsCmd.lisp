; Auto-generated. Do not edit!


(cl:in-package custom_msgs-srv)


;//! \htmlinclude SideLampsCmd-request.msg.html

(cl:defclass <SideLampsCmd-request> (roslisp-msg-protocol:ros-message)
  ((SideLampsEnable
    :reader SideLampsEnable
    :initarg :SideLampsEnable
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SideLampsCmd-request (<SideLampsCmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SideLampsCmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SideLampsCmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<SideLampsCmd-request> is deprecated: use custom_msgs-srv:SideLampsCmd-request instead.")))

(cl:ensure-generic-function 'SideLampsEnable-val :lambda-list '(m))
(cl:defmethod SideLampsEnable-val ((m <SideLampsCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:SideLampsEnable-val is deprecated.  Use custom_msgs-srv:SideLampsEnable instead.")
  (SideLampsEnable m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SideLampsCmd-request>)))
    "Constants for message type '<SideLampsCmd-request>"
  '((:TURNOFF . 0)
    (:TURNON . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SideLampsCmd-request)))
    "Constants for message type 'SideLampsCmd-request"
  '((:TURNOFF . 0)
    (:TURNON . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SideLampsCmd-request>) ostream)
  "Serializes a message object of type '<SideLampsCmd-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SideLampsEnable)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SideLampsCmd-request>) istream)
  "Deserializes a message object of type '<SideLampsCmd-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SideLampsEnable)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SideLampsCmd-request>)))
  "Returns string type for a service object of type '<SideLampsCmd-request>"
  "custom_msgs/SideLampsCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SideLampsCmd-request)))
  "Returns string type for a service object of type 'SideLampsCmd-request"
  "custom_msgs/SideLampsCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SideLampsCmd-request>)))
  "Returns md5sum for a message object of type '<SideLampsCmd-request>"
  "0d308c1c8608ef82d9ba9d867f3edac3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SideLampsCmd-request)))
  "Returns md5sum for a message object of type 'SideLampsCmd-request"
  "0d308c1c8608ef82d9ba9d867f3edac3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SideLampsCmd-request>)))
  "Returns full string definition for message of type '<SideLampsCmd-request>"
  (cl:format cl:nil "#----------------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#      LCM_SideLamps 示廓灯命令  0x0:Turn Off;0x1:Turn On~%#----------------------------------------------------------------------~%~%#请求---------------------------------------------------------~%##定义赋值枚举~%uint8 TurnOff=0~%uint8 TurnOn=1~%#~%uint8 SideLampsEnable        #喇叭:0x0:Turn Off;0x1:Turn On~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SideLampsCmd-request)))
  "Returns full string definition for message of type 'SideLampsCmd-request"
  (cl:format cl:nil "#----------------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#      LCM_SideLamps 示廓灯命令  0x0:Turn Off;0x1:Turn On~%#----------------------------------------------------------------------~%~%#请求---------------------------------------------------------~%##定义赋值枚举~%uint8 TurnOff=0~%uint8 TurnOn=1~%#~%uint8 SideLampsEnable        #喇叭:0x0:Turn Off;0x1:Turn On~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SideLampsCmd-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SideLampsCmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SideLampsCmd-request
    (cl:cons ':SideLampsEnable (SideLampsEnable msg))
))
;//! \htmlinclude SideLampsCmd-response.msg.html

(cl:defclass <SideLampsCmd-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SideLampsCmd-response (<SideLampsCmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SideLampsCmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SideLampsCmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<SideLampsCmd-response> is deprecated: use custom_msgs-srv:SideLampsCmd-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <SideLampsCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:res-val is deprecated.  Use custom_msgs-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SideLampsCmd-response>) ostream)
  "Serializes a message object of type '<SideLampsCmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'res) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SideLampsCmd-response>) istream)
  "Deserializes a message object of type '<SideLampsCmd-response>"
    (cl:setf (cl:slot-value msg 'res) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SideLampsCmd-response>)))
  "Returns string type for a service object of type '<SideLampsCmd-response>"
  "custom_msgs/SideLampsCmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SideLampsCmd-response)))
  "Returns string type for a service object of type 'SideLampsCmd-response"
  "custom_msgs/SideLampsCmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SideLampsCmd-response>)))
  "Returns md5sum for a message object of type '<SideLampsCmd-response>"
  "0d308c1c8608ef82d9ba9d867f3edac3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SideLampsCmd-response)))
  "Returns md5sum for a message object of type 'SideLampsCmd-response"
  "0d308c1c8608ef82d9ba9d867f3edac3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SideLampsCmd-response>)))
  "Returns full string definition for message of type '<SideLampsCmd-response>"
  (cl:format cl:nil "#返回值-----------------------------------------------------------~%##定义赋值枚举~%bool res~%#控制字段~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SideLampsCmd-response)))
  "Returns full string definition for message of type 'SideLampsCmd-response"
  (cl:format cl:nil "#返回值-----------------------------------------------------------~%##定义赋值枚举~%bool res~%#控制字段~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SideLampsCmd-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SideLampsCmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SideLampsCmd-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SideLampsCmd)))
  'SideLampsCmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SideLampsCmd)))
  'SideLampsCmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SideLampsCmd)))
  "Returns string type for a service object of type '<SideLampsCmd>"
  "custom_msgs/SideLampsCmd")