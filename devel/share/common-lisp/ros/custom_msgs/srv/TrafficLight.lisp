; Auto-generated. Do not edit!


(cl:in-package custom_msgs-srv)


;//! \htmlinclude TrafficLight-request.msg.html

(cl:defclass <TrafficLight-request> (roslisp-msg-protocol:ros-message)
  ((direction
    :reader direction
    :initarg :direction
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass TrafficLight-request (<TrafficLight-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLight-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLight-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<TrafficLight-request> is deprecated: use custom_msgs-srv:TrafficLight-request instead.")))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <TrafficLight-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:direction-val is deprecated.  Use custom_msgs-srv:direction instead.")
  (direction m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <TrafficLight-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:longitude-val is deprecated.  Use custom_msgs-srv:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <TrafficLight-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:latitude-val is deprecated.  Use custom_msgs-srv:latitude instead.")
  (latitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLight-request>) ostream)
  "Serializes a message object of type '<TrafficLight-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLight-request>) istream)
  "Deserializes a message object of type '<TrafficLight-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'direction) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLight-request>)))
  "Returns string type for a service object of type '<TrafficLight-request>"
  "custom_msgs/TrafficLightRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLight-request)))
  "Returns string type for a service object of type 'TrafficLight-request"
  "custom_msgs/TrafficLightRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLight-request>)))
  "Returns md5sum for a message object of type '<TrafficLight-request>"
  "f9d59e96e2a4e7bdae125e6e2c0478a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLight-request)))
  "Returns md5sum for a message object of type 'TrafficLight-request"
  "f9d59e96e2a4e7bdae125e6e2c0478a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLight-request>)))
  "Returns full string definition for message of type '<TrafficLight-request>"
  (cl:format cl:nil "#------------------------------~%#交通灯请求~%#------------------------------~%float32 direction       #车辆即将开往的方向，单位°，以车头为0，顺时针为正方向~%float64 longitude       #交通灯所在路口中心的经度~%float64 latitude        #交通灯所在路口中心的纬度~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLight-request)))
  "Returns full string definition for message of type 'TrafficLight-request"
  (cl:format cl:nil "#------------------------------~%#交通灯请求~%#------------------------------~%float32 direction       #车辆即将开往的方向，单位°，以车头为0，顺时针为正方向~%float64 longitude       #交通灯所在路口中心的经度~%float64 latitude        #交通灯所在路口中心的纬度~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLight-request>))
  (cl:+ 0
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLight-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLight-request
    (cl:cons ':direction (direction msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':latitude (latitude msg))
))
;//! \htmlinclude TrafficLight-response.msg.html

(cl:defclass <TrafficLight-response> (roslisp-msg-protocol:ros-message)
  ((color
    :reader color
    :initarg :color
    :type cl:integer
    :initform 0)
   (time
    :reader time
    :initarg :time
    :type cl:integer
    :initform 0))
)

(cl:defclass TrafficLight-response (<TrafficLight-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLight-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLight-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<TrafficLight-response> is deprecated: use custom_msgs-srv:TrafficLight-response instead.")))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <TrafficLight-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:color-val is deprecated.  Use custom_msgs-srv:color instead.")
  (color m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <TrafficLight-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:time-val is deprecated.  Use custom_msgs-srv:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficLight-response>)))
    "Constants for message type '<TrafficLight-response>"
  '((:GREEN . 2)
    (:RED . 1)
    (:YELLOW . 4)
    (:INVALID . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficLight-response)))
    "Constants for message type 'TrafficLight-response"
  '((:GREEN . 2)
    (:RED . 1)
    (:YELLOW . 4)
    (:INVALID . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLight-response>) ostream)
  "Serializes a message object of type '<TrafficLight-response>"
  (cl:let* ((signed (cl:slot-value msg 'color)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'time)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLight-response>) istream)
  "Deserializes a message object of type '<TrafficLight-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLight-response>)))
  "Returns string type for a service object of type '<TrafficLight-response>"
  "custom_msgs/TrafficLightResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLight-response)))
  "Returns string type for a service object of type 'TrafficLight-response"
  "custom_msgs/TrafficLightResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLight-response>)))
  "Returns md5sum for a message object of type '<TrafficLight-response>"
  "f9d59e96e2a4e7bdae125e6e2c0478a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLight-response)))
  "Returns md5sum for a message object of type 'TrafficLight-response"
  "f9d59e96e2a4e7bdae125e6e2c0478a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLight-response>)))
  "Returns full string definition for message of type '<TrafficLight-response>"
  (cl:format cl:nil "int32 GREEN=2~%int32 RED=1~%int32 YELLOW=4~%int32 INVALID=0~%~%int32 color             # 1 red 2 green 3 黄色 -1无效~%int32 time              # 剩余时间~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLight-response)))
  "Returns full string definition for message of type 'TrafficLight-response"
  (cl:format cl:nil "int32 GREEN=2~%int32 RED=1~%int32 YELLOW=4~%int32 INVALID=0~%~%int32 color             # 1 red 2 green 3 黄色 -1无效~%int32 time              # 剩余时间~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLight-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLight-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLight-response
    (cl:cons ':color (color msg))
    (cl:cons ':time (time msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TrafficLight)))
  'TrafficLight-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TrafficLight)))
  'TrafficLight-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLight)))
  "Returns string type for a service object of type '<TrafficLight>"
  "custom_msgs/TrafficLight")