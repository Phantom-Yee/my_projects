; Auto-generated. Do not edit!


(cl:in-package custom_msgs-srv)


;//! \htmlinclude HornsCmd-request.msg.html

(cl:defclass <HornsCmd-request> (roslisp-msg-protocol:ros-message)
  ((HornsEnable
    :reader HornsEnable
    :initarg :HornsEnable
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HornsCmd-request (<HornsCmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HornsCmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HornsCmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<HornsCmd-request> is deprecated: use custom_msgs-srv:HornsCmd-request instead.")))

(cl:ensure-generic-function 'HornsEnable-val :lambda-list '(m))
(cl:defmethod HornsEnable-val ((m <HornsCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:HornsEnable-val is deprecated.  Use custom_msgs-srv:HornsEnable instead.")
  (HornsEnable m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HornsCmd-request>)))
    "Constants for message type '<HornsCmd-request>"
  '((:TURNOFF . 0)
    (:TURNON . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HornsCmd-request)))
    "Constants for message type 'HornsCmd-request"
  '((:TURNOFF . 0)
    (:TURNON . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HornsCmd-request>) ostream)
  "Serializes a message object of type '<HornsCmd-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HornsEnable)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HornsCmd-request>) istream)
  "Deserializes a message object of type '<HornsCmd-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HornsEnable)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HornsCmd-request>)))
  "Returns string type for a service object of type '<HornsCmd-request>"
  "custom_msgs/HornsCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HornsCmd-request)))
  "Returns string type for a service object of type 'HornsCmd-request"
  "custom_msgs/HornsCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HornsCmd-request>)))
  "Returns md5sum for a message object of type '<HornsCmd-request>"
  "79223b1530c210472b338aa78cd18891")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HornsCmd-request)))
  "Returns md5sum for a message object of type 'HornsCmd-request"
  "79223b1530c210472b338aa78cd18891")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HornsCmd-request>)))
  "Returns full string definition for message of type '<HornsCmd-request>"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#      BCM BCM_Horns 喇叭~%#      0x0 :  Inactive； 0x1 :Active；~%#----------------------------------------------------------------~%~%#请求---------------------------------------------------------~%##定义赋值枚举~%uint8 TurnOff=0~%uint8 TurnOn=1~%~%##请求控制量~%uint8 HornsEnable~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HornsCmd-request)))
  "Returns full string definition for message of type 'HornsCmd-request"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#      BCM BCM_Horns 喇叭~%#      0x0 :  Inactive； 0x1 :Active；~%#----------------------------------------------------------------~%~%#请求---------------------------------------------------------~%##定义赋值枚举~%uint8 TurnOff=0~%uint8 TurnOn=1~%~%##请求控制量~%uint8 HornsEnable~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HornsCmd-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HornsCmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HornsCmd-request
    (cl:cons ':HornsEnable (HornsEnable msg))
))
;//! \htmlinclude HornsCmd-response.msg.html

(cl:defclass <HornsCmd-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass HornsCmd-response (<HornsCmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HornsCmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HornsCmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<HornsCmd-response> is deprecated: use custom_msgs-srv:HornsCmd-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <HornsCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:res-val is deprecated.  Use custom_msgs-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HornsCmd-response>) ostream)
  "Serializes a message object of type '<HornsCmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'res) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HornsCmd-response>) istream)
  "Deserializes a message object of type '<HornsCmd-response>"
    (cl:setf (cl:slot-value msg 'res) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HornsCmd-response>)))
  "Returns string type for a service object of type '<HornsCmd-response>"
  "custom_msgs/HornsCmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HornsCmd-response)))
  "Returns string type for a service object of type 'HornsCmd-response"
  "custom_msgs/HornsCmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HornsCmd-response>)))
  "Returns md5sum for a message object of type '<HornsCmd-response>"
  "79223b1530c210472b338aa78cd18891")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HornsCmd-response)))
  "Returns md5sum for a message object of type 'HornsCmd-response"
  "79223b1530c210472b338aa78cd18891")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HornsCmd-response>)))
  "Returns full string definition for message of type '<HornsCmd-response>"
  (cl:format cl:nil "#返回值-----------------------------------------------------------~%##定义赋值枚举~%bool res~%#控制字段~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HornsCmd-response)))
  "Returns full string definition for message of type 'HornsCmd-response"
  (cl:format cl:nil "#返回值-----------------------------------------------------------~%##定义赋值枚举~%bool res~%#控制字段~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HornsCmd-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HornsCmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HornsCmd-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HornsCmd)))
  'HornsCmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HornsCmd)))
  'HornsCmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HornsCmd)))
  "Returns string type for a service object of type '<HornsCmd>"
  "custom_msgs/HornsCmd")