; Auto-generated. Do not edit!


(cl:in-package custom_msgs-srv)


;//! \htmlinclude EPBCmd-request.msg.html

(cl:defclass <EPBCmd-request> (roslisp-msg-protocol:ros-message)
  ((APA_EPBrequestValid
    :reader APA_EPBrequestValid
    :initarg :APA_EPBrequestValid
    :type cl:fixnum
    :initform 0)
   (APA_EPBrequest
    :reader APA_EPBrequest
    :initarg :APA_EPBrequest
    :type cl:fixnum
    :initform 0))
)

(cl:defclass EPBCmd-request (<EPBCmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EPBCmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EPBCmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<EPBCmd-request> is deprecated: use custom_msgs-srv:EPBCmd-request instead.")))

(cl:ensure-generic-function 'APA_EPBrequestValid-val :lambda-list '(m))
(cl:defmethod APA_EPBrequestValid-val ((m <EPBCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:APA_EPBrequestValid-val is deprecated.  Use custom_msgs-srv:APA_EPBrequestValid instead.")
  (APA_EPBrequestValid m))

(cl:ensure-generic-function 'APA_EPBrequest-val :lambda-list '(m))
(cl:defmethod APA_EPBrequest-val ((m <EPBCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:APA_EPBrequest-val is deprecated.  Use custom_msgs-srv:APA_EPBrequest instead.")
  (APA_EPBrequest m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EPBCmd-request>)))
    "Constants for message type '<EPBCmd-request>"
  '((:ENABLE . 0)
    (:DIABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EPBCmd-request)))
    "Constants for message type 'EPBCmd-request"
  '((:ENABLE . 0)
    (:DIABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EPBCmd-request>) ostream)
  "Serializes a message object of type '<EPBCmd-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'APA_EPBrequestValid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'APA_EPBrequest)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EPBCmd-request>) istream)
  "Deserializes a message object of type '<EPBCmd-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'APA_EPBrequestValid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'APA_EPBrequest)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EPBCmd-request>)))
  "Returns string type for a service object of type '<EPBCmd-request>"
  "custom_msgs/EPBCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EPBCmd-request)))
  "Returns string type for a service object of type 'EPBCmd-request"
  "custom_msgs/EPBCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EPBCmd-request>)))
  "Returns md5sum for a message object of type '<EPBCmd-request>"
  "97ad02b260ada95bd0bdc9b9b400a370")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EPBCmd-request)))
  "Returns md5sum for a message object of type 'EPBCmd-request"
  "97ad02b260ada95bd0bdc9b9b400a370")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EPBCmd-request>)))
  "Returns full string definition for message of type '<EPBCmd-request>"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#----------------------------------------------------------------~%~%#请求---------------------------------------------------------~%##定义赋值枚举~%uint8 Enable=0~%uint8 Diable=1~%#~%uint8 APA_EPBrequestValid~%uint8 APA_EPBrequest~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EPBCmd-request)))
  "Returns full string definition for message of type 'EPBCmd-request"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#----------------------------------------------------------------~%~%#请求---------------------------------------------------------~%##定义赋值枚举~%uint8 Enable=0~%uint8 Diable=1~%#~%uint8 APA_EPBrequestValid~%uint8 APA_EPBrequest~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EPBCmd-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EPBCmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EPBCmd-request
    (cl:cons ':APA_EPBrequestValid (APA_EPBrequestValid msg))
    (cl:cons ':APA_EPBrequest (APA_EPBrequest msg))
))
;//! \htmlinclude EPBCmd-response.msg.html

(cl:defclass <EPBCmd-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EPBCmd-response (<EPBCmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EPBCmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EPBCmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<EPBCmd-response> is deprecated: use custom_msgs-srv:EPBCmd-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <EPBCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:res-val is deprecated.  Use custom_msgs-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EPBCmd-response>) ostream)
  "Serializes a message object of type '<EPBCmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'res) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EPBCmd-response>) istream)
  "Deserializes a message object of type '<EPBCmd-response>"
    (cl:setf (cl:slot-value msg 'res) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EPBCmd-response>)))
  "Returns string type for a service object of type '<EPBCmd-response>"
  "custom_msgs/EPBCmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EPBCmd-response)))
  "Returns string type for a service object of type 'EPBCmd-response"
  "custom_msgs/EPBCmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EPBCmd-response>)))
  "Returns md5sum for a message object of type '<EPBCmd-response>"
  "97ad02b260ada95bd0bdc9b9b400a370")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EPBCmd-response)))
  "Returns md5sum for a message object of type 'EPBCmd-response"
  "97ad02b260ada95bd0bdc9b9b400a370")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EPBCmd-response>)))
  "Returns full string definition for message of type '<EPBCmd-response>"
  (cl:format cl:nil "#返回值-----------------------------------------------------------~%##定义赋值枚举~%bool res~%#控制字段~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EPBCmd-response)))
  "Returns full string definition for message of type 'EPBCmd-response"
  (cl:format cl:nil "#返回值-----------------------------------------------------------~%##定义赋值枚举~%bool res~%#控制字段~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EPBCmd-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EPBCmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EPBCmd-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EPBCmd)))
  'EPBCmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EPBCmd)))
  'EPBCmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EPBCmd)))
  "Returns string type for a service object of type '<EPBCmd>"
  "custom_msgs/EPBCmd")