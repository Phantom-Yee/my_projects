; Auto-generated. Do not edit!


(cl:in-package custom_msgs-srv)


;//! \htmlinclude Control-request.msg.html

(cl:defclass <Control-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil)
   (info
    :reader info
    :initarg :info
    :type cl:float
    :initform 0.0)
   (source
    :reader source
    :initarg :source
    :type cl:string
    :initform ""))
)

(cl:defclass Control-request (<Control-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Control-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Control-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<Control-request> is deprecated: use custom_msgs-srv:Control-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Control-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:type-val is deprecated.  Use custom_msgs-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <Control-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:enable-val is deprecated.  Use custom_msgs-srv:enable instead.")
  (enable m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <Control-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:info-val is deprecated.  Use custom_msgs-srv:info instead.")
  (info m))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <Control-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:source-val is deprecated.  Use custom_msgs-srv:source instead.")
  (source m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Control-request>)))
    "Constants for message type '<Control-request>"
  '((:IS_STOP . 1)
    (:IS_AEB . 2)
    (:IS_BACK . 3)
    (:IS_SWITCH_SPEED . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Control-request)))
    "Constants for message type 'Control-request"
  '((:IS_STOP . 1)
    (:IS_AEB . 2)
    (:IS_BACK . 3)
    (:IS_SWITCH_SPEED . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Control-request>) ostream)
  "Serializes a message object of type '<Control-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'source))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'source))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Control-request>) istream)
  "Deserializes a message object of type '<Control-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'info) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'source) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Control-request>)))
  "Returns string type for a service object of type '<Control-request>"
  "custom_msgs/ControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Control-request)))
  "Returns string type for a service object of type 'Control-request"
  "custom_msgs/ControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Control-request>)))
  "Returns md5sum for a message object of type '<Control-request>"
  "381944d60ba0e70fd89c5bcfc7b6474d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Control-request)))
  "Returns md5sum for a message object of type 'Control-request"
  "381944d60ba0e70fd89c5bcfc7b6474d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Control-request>)))
  "Returns full string definition for message of type '<Control-request>"
  (cl:format cl:nil "#------------------------------~%#横向规划~%#------------------------------~%~%uint8    Is_stop = 1~%uint8    Is_aeb  = 2~%uint8    Is_back = 3~%uint8    Is_switch_speed = 4~%~%uint8   type     #控制类别~%bool    enable   #使能~%float32 info     #包括速度、刹车距离~%string  source   #控制消息来源~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Control-request)))
  "Returns full string definition for message of type 'Control-request"
  (cl:format cl:nil "#------------------------------~%#横向规划~%#------------------------------~%~%uint8    Is_stop = 1~%uint8    Is_aeb  = 2~%uint8    Is_back = 3~%uint8    Is_switch_speed = 4~%~%uint8   type     #控制类别~%bool    enable   #使能~%float32 info     #包括速度、刹车距离~%string  source   #控制消息来源~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Control-request>))
  (cl:+ 0
     1
     1
     4
     4 (cl:length (cl:slot-value msg 'source))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Control-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Control-request
    (cl:cons ':type (type msg))
    (cl:cons ':enable (enable msg))
    (cl:cons ':info (info msg))
    (cl:cons ':source (source msg))
))
;//! \htmlinclude Control-response.msg.html

(cl:defclass <Control-response> (roslisp-msg-protocol:ros-message)
  ((isSuccess
    :reader isSuccess
    :initarg :isSuccess
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Control-response (<Control-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Control-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Control-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<Control-response> is deprecated: use custom_msgs-srv:Control-response instead.")))

(cl:ensure-generic-function 'isSuccess-val :lambda-list '(m))
(cl:defmethod isSuccess-val ((m <Control-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:isSuccess-val is deprecated.  Use custom_msgs-srv:isSuccess instead.")
  (isSuccess m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Control-response>) ostream)
  "Serializes a message object of type '<Control-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isSuccess) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Control-response>) istream)
  "Deserializes a message object of type '<Control-response>"
    (cl:setf (cl:slot-value msg 'isSuccess) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Control-response>)))
  "Returns string type for a service object of type '<Control-response>"
  "custom_msgs/ControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Control-response)))
  "Returns string type for a service object of type 'Control-response"
  "custom_msgs/ControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Control-response>)))
  "Returns md5sum for a message object of type '<Control-response>"
  "381944d60ba0e70fd89c5bcfc7b6474d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Control-response)))
  "Returns md5sum for a message object of type 'Control-response"
  "381944d60ba0e70fd89c5bcfc7b6474d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Control-response>)))
  "Returns full string definition for message of type '<Control-response>"
  (cl:format cl:nil "bool    isSuccess~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Control-response)))
  "Returns full string definition for message of type 'Control-response"
  (cl:format cl:nil "bool    isSuccess~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Control-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Control-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Control-response
    (cl:cons ':isSuccess (isSuccess msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Control)))
  'Control-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Control)))
  'Control-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Control)))
  "Returns string type for a service object of type '<Control>"
  "custom_msgs/Control")