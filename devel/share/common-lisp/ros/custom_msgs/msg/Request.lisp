; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude Request.msg.html

(cl:defclass <Request> (roslisp-msg-protocol:ros-message)
  ((head
    :reader head
    :initarg :head
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (reques_type
    :reader reques_type
    :initarg :reques_type
    :type cl:fixnum
    :initform 0)
   (run_speed
    :reader run_speed
    :initarg :run_speed
    :type cl:float
    :initform 0.0)
   (stop_distance
    :reader stop_distance
    :initarg :stop_distance
    :type cl:float
    :initform 0.0)
   (aeb_distance
    :reader aeb_distance
    :initarg :aeb_distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass Request (<Request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<Request> is deprecated: use custom_msgs-msg:Request instead.")))

(cl:ensure-generic-function 'head-val :lambda-list '(m))
(cl:defmethod head-val ((m <Request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:head-val is deprecated.  Use custom_msgs-msg:head instead.")
  (head m))

(cl:ensure-generic-function 'reques_type-val :lambda-list '(m))
(cl:defmethod reques_type-val ((m <Request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:reques_type-val is deprecated.  Use custom_msgs-msg:reques_type instead.")
  (reques_type m))

(cl:ensure-generic-function 'run_speed-val :lambda-list '(m))
(cl:defmethod run_speed-val ((m <Request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:run_speed-val is deprecated.  Use custom_msgs-msg:run_speed instead.")
  (run_speed m))

(cl:ensure-generic-function 'stop_distance-val :lambda-list '(m))
(cl:defmethod stop_distance-val ((m <Request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:stop_distance-val is deprecated.  Use custom_msgs-msg:stop_distance instead.")
  (stop_distance m))

(cl:ensure-generic-function 'aeb_distance-val :lambda-list '(m))
(cl:defmethod aeb_distance-val ((m <Request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:aeb_distance-val is deprecated.  Use custom_msgs-msg:aeb_distance instead.")
  (aeb_distance m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Request>)))
    "Constants for message type '<Request>"
  '((:FORWARD_ENABLE . 0)
    (:BACK_ENABLE . 1)
    (:STOP_ENABLE . 2)
    (:AEB_ENABLE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Request)))
    "Constants for message type 'Request"
  '((:FORWARD_ENABLE . 0)
    (:BACK_ENABLE . 1)
    (:STOP_ENABLE . 2)
    (:AEB_ENABLE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Request>) ostream)
  "Serializes a message object of type '<Request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'head) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reques_type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'run_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'stop_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'aeb_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Request>) istream)
  "Deserializes a message object of type '<Request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'head) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reques_type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'run_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stop_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'aeb_distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Request>)))
  "Returns string type for a message object of type '<Request>"
  "custom_msgs/Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Request)))
  "Returns string type for a message object of type 'Request"
  "custom_msgs/Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Request>)))
  "Returns md5sum for a message object of type '<Request>"
  "33db08dafe47ef9121746ecf8b323f75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Request)))
  "Returns md5sum for a message object of type 'Request"
  "33db08dafe47ef9121746ecf8b323f75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Request>)))
  "Returns full string definition for message of type '<Request>"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#----------------------------------------------------------------~%~%std_msgs/Header head~%~%~%uint8 FORWARD_ENABLE=0     #前进使能~%uint8 BACK_ENABLE=1        #倒车使能~%uint8 STOP_ENABLE=2        #停车使能~%uint8 AEB_ENABLE=3         #紧急刹车使能~%~%uint8    reques_type       #使能类型~%float32  run_speed         #行车速度~%float32  stop_distance     #前方停止距离~%float32  aeb_distance      #前方AEB停止距离~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Request)))
  "Returns full string definition for message of type 'Request"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#----------------------------------------------------------------~%~%std_msgs/Header head~%~%~%uint8 FORWARD_ENABLE=0     #前进使能~%uint8 BACK_ENABLE=1        #倒车使能~%uint8 STOP_ENABLE=2        #停车使能~%uint8 AEB_ENABLE=3         #紧急刹车使能~%~%uint8    reques_type       #使能类型~%float32  run_speed         #行车速度~%float32  stop_distance     #前方停止距离~%float32  aeb_distance      #前方AEB停止距离~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'head))
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Request>))
  "Converts a ROS message object to a list"
  (cl:list 'Request
    (cl:cons ':head (head msg))
    (cl:cons ':reques_type (reques_type msg))
    (cl:cons ':run_speed (run_speed msg))
    (cl:cons ':stop_distance (stop_distance msg))
    (cl:cons ':aeb_distance (aeb_distance msg))
))
