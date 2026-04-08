; Auto-generated. Do not edit!


(cl:in-package custom_msgs-srv)


;//! \htmlinclude Warn-request.msg.html

(cl:defclass <Warn-request> (roslisp-msg-protocol:ros-message)
  ((source
    :reader source
    :initarg :source
    :type cl:fixnum
    :initform 0)
   (code
    :reader code
    :initarg :code
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Warn-request (<Warn-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Warn-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Warn-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<Warn-request> is deprecated: use custom_msgs-srv:Warn-request instead.")))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <Warn-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:source-val is deprecated.  Use custom_msgs-srv:source instead.")
  (source m))

(cl:ensure-generic-function 'code-val :lambda-list '(m))
(cl:defmethod code-val ((m <Warn-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:code-val is deprecated.  Use custom_msgs-srv:code instead.")
  (code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Warn-request>) ostream)
  "Serializes a message object of type '<Warn-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Warn-request>) istream)
  "Deserializes a message object of type '<Warn-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Warn-request>)))
  "Returns string type for a service object of type '<Warn-request>"
  "custom_msgs/WarnRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Warn-request)))
  "Returns string type for a service object of type 'Warn-request"
  "custom_msgs/WarnRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Warn-request>)))
  "Returns md5sum for a message object of type '<Warn-request>"
  "aa3e75dde8fd6fb3a237b3eef4655d49")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Warn-request)))
  "Returns md5sum for a message object of type 'Warn-request"
  "aa3e75dde8fd6fb3a237b3eef4655d49")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Warn-request>)))
  "Returns full string definition for message of type '<Warn-request>"
  (cl:format cl:nil "#------------------------------~%#异常报警服务~%#------------------------------~%uint8  source   #消息来源~%uint8  code     #错误码~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Warn-request)))
  "Returns full string definition for message of type 'Warn-request"
  (cl:format cl:nil "#------------------------------~%#异常报警服务~%#------------------------------~%uint8  source   #消息来源~%uint8  code     #错误码~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Warn-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Warn-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Warn-request
    (cl:cons ':source (source msg))
    (cl:cons ':code (code msg))
))
;//! \htmlinclude Warn-response.msg.html

(cl:defclass <Warn-response> (roslisp-msg-protocol:ros-message)
  ((isLidarOK
    :reader isLidarOK
    :initarg :isLidarOK
    :type cl:fixnum
    :initform 0)
   (isNaviOK
    :reader isNaviOK
    :initarg :isNaviOK
    :type cl:fixnum
    :initform 0)
   (isCtrlOK
    :reader isCtrlOK
    :initarg :isCtrlOK
    :type cl:fixnum
    :initform 0)
   (isXavierOK
    :reader isXavierOK
    :initarg :isXavierOK
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Warn-response (<Warn-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Warn-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Warn-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<Warn-response> is deprecated: use custom_msgs-srv:Warn-response instead.")))

(cl:ensure-generic-function 'isLidarOK-val :lambda-list '(m))
(cl:defmethod isLidarOK-val ((m <Warn-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:isLidarOK-val is deprecated.  Use custom_msgs-srv:isLidarOK instead.")
  (isLidarOK m))

(cl:ensure-generic-function 'isNaviOK-val :lambda-list '(m))
(cl:defmethod isNaviOK-val ((m <Warn-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:isNaviOK-val is deprecated.  Use custom_msgs-srv:isNaviOK instead.")
  (isNaviOK m))

(cl:ensure-generic-function 'isCtrlOK-val :lambda-list '(m))
(cl:defmethod isCtrlOK-val ((m <Warn-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:isCtrlOK-val is deprecated.  Use custom_msgs-srv:isCtrlOK instead.")
  (isCtrlOK m))

(cl:ensure-generic-function 'isXavierOK-val :lambda-list '(m))
(cl:defmethod isXavierOK-val ((m <Warn-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:isXavierOK-val is deprecated.  Use custom_msgs-srv:isXavierOK instead.")
  (isXavierOK m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Warn-response>) ostream)
  "Serializes a message object of type '<Warn-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isLidarOK)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isNaviOK)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isCtrlOK)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isXavierOK)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Warn-response>) istream)
  "Deserializes a message object of type '<Warn-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isLidarOK)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isNaviOK)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isCtrlOK)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isXavierOK)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Warn-response>)))
  "Returns string type for a service object of type '<Warn-response>"
  "custom_msgs/WarnResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Warn-response)))
  "Returns string type for a service object of type 'Warn-response"
  "custom_msgs/WarnResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Warn-response>)))
  "Returns md5sum for a message object of type '<Warn-response>"
  "aa3e75dde8fd6fb3a237b3eef4655d49")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Warn-response)))
  "Returns md5sum for a message object of type 'Warn-response"
  "aa3e75dde8fd6fb3a237b3eef4655d49")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Warn-response>)))
  "Returns full string definition for message of type '<Warn-response>"
  (cl:format cl:nil "uint8   isLidarOK~%uint8   isNaviOK~%uint8   isCtrlOK~%uint8   isXavierOK~%~%~%#----------请按照如下注释进行赋值调用服务-----------------~%~%#------获取状态--------~%#source-->  0~%# ~%#无异常申报，但需要获取状态source赋值为0~%#-------------------~%~%#------lidar--------~%#source-->  1~%#code  -->  0x00: 正常 ~%#           0x01：(某某)雷达错误~%#           0x02：(某某)雷达错误~%#-------------------~%~%#------navi--------~%#source-->  2~%#code  -->  0x00: 正常 ~%#           0x01：~%#           0x02：~%#-------------------~%~%#------ctrl--------~%#source-->  3~%#code  -->  0x00: 正常 ~%#           0x01：~%#           0x02：~%#-------------------~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Warn-response)))
  "Returns full string definition for message of type 'Warn-response"
  (cl:format cl:nil "uint8   isLidarOK~%uint8   isNaviOK~%uint8   isCtrlOK~%uint8   isXavierOK~%~%~%#----------请按照如下注释进行赋值调用服务-----------------~%~%#------获取状态--------~%#source-->  0~%# ~%#无异常申报，但需要获取状态source赋值为0~%#-------------------~%~%#------lidar--------~%#source-->  1~%#code  -->  0x00: 正常 ~%#           0x01：(某某)雷达错误~%#           0x02：(某某)雷达错误~%#-------------------~%~%#------navi--------~%#source-->  2~%#code  -->  0x00: 正常 ~%#           0x01：~%#           0x02：~%#-------------------~%~%#------ctrl--------~%#source-->  3~%#code  -->  0x00: 正常 ~%#           0x01：~%#           0x02：~%#-------------------~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Warn-response>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Warn-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Warn-response
    (cl:cons ':isLidarOK (isLidarOK msg))
    (cl:cons ':isNaviOK (isNaviOK msg))
    (cl:cons ':isCtrlOK (isCtrlOK msg))
    (cl:cons ':isXavierOK (isXavierOK msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Warn)))
  'Warn-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Warn)))
  'Warn-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Warn)))
  "Returns string type for a service object of type '<Warn>"
  "custom_msgs/Warn")