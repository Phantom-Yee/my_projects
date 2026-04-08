; Auto-generated. Do not edit!


(cl:in-package custom_msgs-srv)


;//! \htmlinclude LKSStatusCmd-request.msg.html

(cl:defclass <LKSStatusCmd-request> (roslisp-msg-protocol:ros-message)
  ((LAS_LKSStatus
    :reader LAS_LKSStatus
    :initarg :LAS_LKSStatus
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LKSStatusCmd-request (<LKSStatusCmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LKSStatusCmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LKSStatusCmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<LKSStatusCmd-request> is deprecated: use custom_msgs-srv:LKSStatusCmd-request instead.")))

(cl:ensure-generic-function 'LAS_LKSStatus-val :lambda-list '(m))
(cl:defmethod LAS_LKSStatus-val ((m <LKSStatusCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:LAS_LKSStatus-val is deprecated.  Use custom_msgs-srv:LAS_LKSStatus instead.")
  (LAS_LKSStatus m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LKSStatusCmd-request>)))
    "Constants for message type '<LKSStatusCmd-request>"
  '((:ENABLE . 0)
    (:DIABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LKSStatusCmd-request)))
    "Constants for message type 'LKSStatusCmd-request"
  '((:ENABLE . 0)
    (:DIABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LKSStatusCmd-request>) ostream)
  "Serializes a message object of type '<LKSStatusCmd-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LAS_LKSStatus)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LKSStatusCmd-request>) istream)
  "Deserializes a message object of type '<LKSStatusCmd-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LAS_LKSStatus)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LKSStatusCmd-request>)))
  "Returns string type for a service object of type '<LKSStatusCmd-request>"
  "custom_msgs/LKSStatusCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LKSStatusCmd-request)))
  "Returns string type for a service object of type 'LKSStatusCmd-request"
  "custom_msgs/LKSStatusCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LKSStatusCmd-request>)))
  "Returns md5sum for a message object of type '<LKSStatusCmd-request>"
  "7bb5f6915f70508cfdaad8cf055e8ba8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LKSStatusCmd-request)))
  "Returns md5sum for a message object of type 'LKSStatusCmd-request"
  "7bb5f6915f70508cfdaad8cf055e8ba8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LKSStatusCmd-request>)))
  "Returns full string definition for message of type '<LKSStatusCmd-request>"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#----------------------------------------------------------------~%~%#请求---------------------------------------------------------~%##定义赋值枚举~%uint8 Enable=0~%uint8 Diable=1~%#~%uint8 LAS_LKSStatus~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LKSStatusCmd-request)))
  "Returns full string definition for message of type 'LKSStatusCmd-request"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#----------------------------------------------------------------~%~%#请求---------------------------------------------------------~%##定义赋值枚举~%uint8 Enable=0~%uint8 Diable=1~%#~%uint8 LAS_LKSStatus~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LKSStatusCmd-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LKSStatusCmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LKSStatusCmd-request
    (cl:cons ':LAS_LKSStatus (LAS_LKSStatus msg))
))
;//! \htmlinclude LKSStatusCmd-response.msg.html

(cl:defclass <LKSStatusCmd-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LKSStatusCmd-response (<LKSStatusCmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LKSStatusCmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LKSStatusCmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<LKSStatusCmd-response> is deprecated: use custom_msgs-srv:LKSStatusCmd-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <LKSStatusCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:res-val is deprecated.  Use custom_msgs-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LKSStatusCmd-response>) ostream)
  "Serializes a message object of type '<LKSStatusCmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'res) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LKSStatusCmd-response>) istream)
  "Deserializes a message object of type '<LKSStatusCmd-response>"
    (cl:setf (cl:slot-value msg 'res) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LKSStatusCmd-response>)))
  "Returns string type for a service object of type '<LKSStatusCmd-response>"
  "custom_msgs/LKSStatusCmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LKSStatusCmd-response)))
  "Returns string type for a service object of type 'LKSStatusCmd-response"
  "custom_msgs/LKSStatusCmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LKSStatusCmd-response>)))
  "Returns md5sum for a message object of type '<LKSStatusCmd-response>"
  "7bb5f6915f70508cfdaad8cf055e8ba8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LKSStatusCmd-response)))
  "Returns md5sum for a message object of type 'LKSStatusCmd-response"
  "7bb5f6915f70508cfdaad8cf055e8ba8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LKSStatusCmd-response>)))
  "Returns full string definition for message of type '<LKSStatusCmd-response>"
  (cl:format cl:nil "#返回值-----------------------------------------------------------~%##定义赋值枚举~%bool res~%#控制字段~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LKSStatusCmd-response)))
  "Returns full string definition for message of type 'LKSStatusCmd-response"
  (cl:format cl:nil "#返回值-----------------------------------------------------------~%##定义赋值枚举~%bool res~%#控制字段~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LKSStatusCmd-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LKSStatusCmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LKSStatusCmd-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LKSStatusCmd)))
  'LKSStatusCmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LKSStatusCmd)))
  'LKSStatusCmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LKSStatusCmd)))
  "Returns string type for a service object of type '<LKSStatusCmd>"
  "custom_msgs/LKSStatusCmd")