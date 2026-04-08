; Auto-generated. Do not edit!


(cl:in-package custom_msgs-srv)


;//! \htmlinclude DoorCmd-request.msg.html

(cl:defclass <DoorCmd-request> (roslisp-msg-protocol:ros-message)
  ((DoorLOCK
    :reader DoorLOCK
    :initarg :DoorLOCK
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DoorCmd-request (<DoorCmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoorCmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoorCmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<DoorCmd-request> is deprecated: use custom_msgs-srv:DoorCmd-request instead.")))

(cl:ensure-generic-function 'DoorLOCK-val :lambda-list '(m))
(cl:defmethod DoorLOCK-val ((m <DoorCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:DoorLOCK-val is deprecated.  Use custom_msgs-srv:DoorLOCK instead.")
  (DoorLOCK m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DoorCmd-request>)))
    "Constants for message type '<DoorCmd-request>"
  '((:NO_CMD . 0)
    (:UNLOCK_CMD . 6)
    (:LOCK_CMD . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DoorCmd-request)))
    "Constants for message type 'DoorCmd-request"
  '((:NO_CMD . 0)
    (:UNLOCK_CMD . 6)
    (:LOCK_CMD . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoorCmd-request>) ostream)
  "Serializes a message object of type '<DoorCmd-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DoorLOCK)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoorCmd-request>) istream)
  "Deserializes a message object of type '<DoorCmd-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DoorLOCK)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoorCmd-request>)))
  "Returns string type for a service object of type '<DoorCmd-request>"
  "custom_msgs/DoorCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoorCmd-request)))
  "Returns string type for a service object of type 'DoorCmd-request"
  "custom_msgs/DoorCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoorCmd-request>)))
  "Returns md5sum for a message object of type '<DoorCmd-request>"
  "61d6d40c0b7064601d49a385243830d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoorCmd-request)))
  "Returns md5sum for a message object of type 'DoorCmd-request"
  "61d6d40c0b7064601d49a385243830d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoorCmd-request>)))
  "Returns full string definition for message of type '<DoorCmd-request>"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#      BCM BCM_Door 门锁控制~%#         0x0  APA_NO_CMD~%#         0x1  APA_UNLOCK_CMD~%#         0x2  APA_LOCK_CMD~%#----------------------------------------------------------------~%~%#请求------------------------------------------------------------~%##定义赋值枚举~%uint8 NO_CMD=0~%uint8 UNLOCK_CMD=6~%uint8 LOCK_CMD=7~%#控制字段~%uint8 DoorLOCK~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoorCmd-request)))
  "Returns full string definition for message of type 'DoorCmd-request"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#      BCM BCM_Door 门锁控制~%#         0x0  APA_NO_CMD~%#         0x1  APA_UNLOCK_CMD~%#         0x2  APA_LOCK_CMD~%#----------------------------------------------------------------~%~%#请求------------------------------------------------------------~%##定义赋值枚举~%uint8 NO_CMD=0~%uint8 UNLOCK_CMD=6~%uint8 LOCK_CMD=7~%#控制字段~%uint8 DoorLOCK~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoorCmd-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoorCmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DoorCmd-request
    (cl:cons ':DoorLOCK (DoorLOCK msg))
))
;//! \htmlinclude DoorCmd-response.msg.html

(cl:defclass <DoorCmd-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DoorCmd-response (<DoorCmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoorCmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoorCmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<DoorCmd-response> is deprecated: use custom_msgs-srv:DoorCmd-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <DoorCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:res-val is deprecated.  Use custom_msgs-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoorCmd-response>) ostream)
  "Serializes a message object of type '<DoorCmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'res) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoorCmd-response>) istream)
  "Deserializes a message object of type '<DoorCmd-response>"
    (cl:setf (cl:slot-value msg 'res) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoorCmd-response>)))
  "Returns string type for a service object of type '<DoorCmd-response>"
  "custom_msgs/DoorCmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoorCmd-response)))
  "Returns string type for a service object of type 'DoorCmd-response"
  "custom_msgs/DoorCmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoorCmd-response>)))
  "Returns md5sum for a message object of type '<DoorCmd-response>"
  "61d6d40c0b7064601d49a385243830d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoorCmd-response)))
  "Returns md5sum for a message object of type 'DoorCmd-response"
  "61d6d40c0b7064601d49a385243830d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoorCmd-response>)))
  "Returns full string definition for message of type '<DoorCmd-response>"
  (cl:format cl:nil "#返回值-----------------------------------------------------------~%##定义赋值枚举~%bool res~%#控制字段~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoorCmd-response)))
  "Returns full string definition for message of type 'DoorCmd-response"
  (cl:format cl:nil "#返回值-----------------------------------------------------------~%##定义赋值枚举~%bool res~%#控制字段~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoorCmd-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoorCmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DoorCmd-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DoorCmd)))
  'DoorCmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DoorCmd)))
  'DoorCmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoorCmd)))
  "Returns string type for a service object of type '<DoorCmd>"
  "custom_msgs/DoorCmd")