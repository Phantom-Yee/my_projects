; Auto-generated. Do not edit!


(cl:in-package custom_msgs-srv)


;//! \htmlinclude WindowCmd-request.msg.html

(cl:defclass <WindowCmd-request> (roslisp-msg-protocol:ros-message)
  ((WindowEnable
    :reader WindowEnable
    :initarg :WindowEnable
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WindowCmd-request (<WindowCmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WindowCmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WindowCmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<WindowCmd-request> is deprecated: use custom_msgs-srv:WindowCmd-request instead.")))

(cl:ensure-generic-function 'WindowEnable-val :lambda-list '(m))
(cl:defmethod WindowEnable-val ((m <WindowCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:WindowEnable-val is deprecated.  Use custom_msgs-srv:WindowEnable instead.")
  (WindowEnable m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WindowCmd-request>)))
    "Constants for message type '<WindowCmd-request>"
  '((:TURNOFF . 0)
    (:CLOSE . 1)
    (:OPEN . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WindowCmd-request)))
    "Constants for message type 'WindowCmd-request"
  '((:TURNOFF . 0)
    (:CLOSE . 1)
    (:OPEN . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WindowCmd-request>) ostream)
  "Serializes a message object of type '<WindowCmd-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WindowEnable)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WindowCmd-request>) istream)
  "Deserializes a message object of type '<WindowCmd-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WindowEnable)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WindowCmd-request>)))
  "Returns string type for a service object of type '<WindowCmd-request>"
  "custom_msgs/WindowCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WindowCmd-request)))
  "Returns string type for a service object of type 'WindowCmd-request"
  "custom_msgs/WindowCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WindowCmd-request>)))
  "Returns md5sum for a message object of type '<WindowCmd-request>"
  "fd5f5deae8d571a3248e97a03259cea5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WindowCmd-request)))
  "Returns md5sum for a message object of type 'WindowCmd-request"
  "fd5f5deae8d571a3248e97a03259cea5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WindowCmd-request>)))
  "Returns full string definition for message of type '<WindowCmd-request>"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#----------------------------------------------------------------~%~%#请求---------------------------------------------------------~%##定义赋值枚举~%uint8 TurnOff=0~%uint8 Close=1~%uint8 Open=2~%#~%uint8 WindowEnable~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WindowCmd-request)))
  "Returns full string definition for message of type 'WindowCmd-request"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#----------------------------------------------------------------~%~%#请求---------------------------------------------------------~%##定义赋值枚举~%uint8 TurnOff=0~%uint8 Close=1~%uint8 Open=2~%#~%uint8 WindowEnable~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WindowCmd-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WindowCmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WindowCmd-request
    (cl:cons ':WindowEnable (WindowEnable msg))
))
;//! \htmlinclude WindowCmd-response.msg.html

(cl:defclass <WindowCmd-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WindowCmd-response (<WindowCmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WindowCmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WindowCmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<WindowCmd-response> is deprecated: use custom_msgs-srv:WindowCmd-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <WindowCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:res-val is deprecated.  Use custom_msgs-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WindowCmd-response>) ostream)
  "Serializes a message object of type '<WindowCmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'res) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WindowCmd-response>) istream)
  "Deserializes a message object of type '<WindowCmd-response>"
    (cl:setf (cl:slot-value msg 'res) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WindowCmd-response>)))
  "Returns string type for a service object of type '<WindowCmd-response>"
  "custom_msgs/WindowCmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WindowCmd-response)))
  "Returns string type for a service object of type 'WindowCmd-response"
  "custom_msgs/WindowCmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WindowCmd-response>)))
  "Returns md5sum for a message object of type '<WindowCmd-response>"
  "fd5f5deae8d571a3248e97a03259cea5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WindowCmd-response)))
  "Returns md5sum for a message object of type 'WindowCmd-response"
  "fd5f5deae8d571a3248e97a03259cea5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WindowCmd-response>)))
  "Returns full string definition for message of type '<WindowCmd-response>"
  (cl:format cl:nil "#返回值-----------------------------------------------------------~%##定义赋值枚举~%bool res~%#控制字段~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WindowCmd-response)))
  "Returns full string definition for message of type 'WindowCmd-response"
  (cl:format cl:nil "#返回值-----------------------------------------------------------~%##定义赋值枚举~%bool res~%#控制字段~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WindowCmd-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WindowCmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WindowCmd-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WindowCmd)))
  'WindowCmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WindowCmd)))
  'WindowCmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WindowCmd)))
  "Returns string type for a service object of type '<WindowCmd>"
  "custom_msgs/WindowCmd")