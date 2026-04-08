; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude RoadAttri.msg.html

(cl:defclass <RoadAttri> (roslisp-msg-protocol:ros-message)
  ((velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (road_width
    :reader road_width
    :initarg :road_width
    :type cl:float
    :initform 0.0)
   (aeb_front
    :reader aeb_front
    :initarg :aeb_front
    :type cl:float
    :initform 0.0)
   (aeb_back
    :reader aeb_back
    :initarg :aeb_back
    :type cl:float
    :initform 0.0)
   (aeb_left
    :reader aeb_left
    :initarg :aeb_left
    :type cl:float
    :initform 0.0)
   (aeb_right
    :reader aeb_right
    :initarg :aeb_right
    :type cl:float
    :initform 0.0)
   (detect_front
    :reader detect_front
    :initarg :detect_front
    :type cl:float
    :initform 0.0)
   (detect_back
    :reader detect_back
    :initarg :detect_back
    :type cl:float
    :initform 0.0)
   (detect_left
    :reader detect_left
    :initarg :detect_left
    :type cl:float
    :initform 0.0)
   (detect_right
    :reader detect_right
    :initarg :detect_right
    :type cl:float
    :initform 0.0))
)

(cl:defclass RoadAttri (<RoadAttri>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadAttri>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadAttri)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<RoadAttri> is deprecated: use custom_msgs-msg:RoadAttri instead.")))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <RoadAttri>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:velocity-val is deprecated.  Use custom_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'road_width-val :lambda-list '(m))
(cl:defmethod road_width-val ((m <RoadAttri>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:road_width-val is deprecated.  Use custom_msgs-msg:road_width instead.")
  (road_width m))

(cl:ensure-generic-function 'aeb_front-val :lambda-list '(m))
(cl:defmethod aeb_front-val ((m <RoadAttri>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:aeb_front-val is deprecated.  Use custom_msgs-msg:aeb_front instead.")
  (aeb_front m))

(cl:ensure-generic-function 'aeb_back-val :lambda-list '(m))
(cl:defmethod aeb_back-val ((m <RoadAttri>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:aeb_back-val is deprecated.  Use custom_msgs-msg:aeb_back instead.")
  (aeb_back m))

(cl:ensure-generic-function 'aeb_left-val :lambda-list '(m))
(cl:defmethod aeb_left-val ((m <RoadAttri>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:aeb_left-val is deprecated.  Use custom_msgs-msg:aeb_left instead.")
  (aeb_left m))

(cl:ensure-generic-function 'aeb_right-val :lambda-list '(m))
(cl:defmethod aeb_right-val ((m <RoadAttri>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:aeb_right-val is deprecated.  Use custom_msgs-msg:aeb_right instead.")
  (aeb_right m))

(cl:ensure-generic-function 'detect_front-val :lambda-list '(m))
(cl:defmethod detect_front-val ((m <RoadAttri>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:detect_front-val is deprecated.  Use custom_msgs-msg:detect_front instead.")
  (detect_front m))

(cl:ensure-generic-function 'detect_back-val :lambda-list '(m))
(cl:defmethod detect_back-val ((m <RoadAttri>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:detect_back-val is deprecated.  Use custom_msgs-msg:detect_back instead.")
  (detect_back m))

(cl:ensure-generic-function 'detect_left-val :lambda-list '(m))
(cl:defmethod detect_left-val ((m <RoadAttri>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:detect_left-val is deprecated.  Use custom_msgs-msg:detect_left instead.")
  (detect_left m))

(cl:ensure-generic-function 'detect_right-val :lambda-list '(m))
(cl:defmethod detect_right-val ((m <RoadAttri>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:detect_right-val is deprecated.  Use custom_msgs-msg:detect_right instead.")
  (detect_right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadAttri>) ostream)
  "Serializes a message object of type '<RoadAttri>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'road_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'aeb_front))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'aeb_back))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'aeb_left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'aeb_right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'detect_front))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'detect_back))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'detect_left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'detect_right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadAttri>) istream)
  "Deserializes a message object of type '<RoadAttri>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'road_width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'aeb_front) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'aeb_back) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'aeb_left) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'aeb_right) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'detect_front) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'detect_back) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'detect_left) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'detect_right) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadAttri>)))
  "Returns string type for a message object of type '<RoadAttri>"
  "custom_msgs/RoadAttri")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadAttri)))
  "Returns string type for a message object of type 'RoadAttri"
  "custom_msgs/RoadAttri")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadAttri>)))
  "Returns md5sum for a message object of type '<RoadAttri>"
  "3a92758409755c69dc8ed8773a4195c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadAttri)))
  "Returns md5sum for a message object of type 'RoadAttri"
  "3a92758409755c69dc8ed8773a4195c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadAttri>)))
  "Returns full string definition for message of type '<RoadAttri>"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：lsxing~%# 时间 ：2020.12.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：描述道路基本属性的消息结构~%#----------------------------------------------------------------   ~%~%float32 velocity     #期望车速~%~%float32 road_width   #道路宽度~%~%float32 aeb_front   #AEB范围~%float32 aeb_back~%float32 aeb_left~%float32 aeb_right~%~%float32 detect_front  #检测范围~%float32 detect_back~%float32 detect_left~%float32 detect_right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadAttri)))
  "Returns full string definition for message of type 'RoadAttri"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：lsxing~%# 时间 ：2020.12.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：描述道路基本属性的消息结构~%#----------------------------------------------------------------   ~%~%float32 velocity     #期望车速~%~%float32 road_width   #道路宽度~%~%float32 aeb_front   #AEB范围~%float32 aeb_back~%float32 aeb_left~%float32 aeb_right~%~%float32 detect_front  #检测范围~%float32 detect_back~%float32 detect_left~%float32 detect_right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadAttri>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadAttri>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadAttri
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':road_width (road_width msg))
    (cl:cons ':aeb_front (aeb_front msg))
    (cl:cons ':aeb_back (aeb_back msg))
    (cl:cons ':aeb_left (aeb_left msg))
    (cl:cons ':aeb_right (aeb_right msg))
    (cl:cons ':detect_front (detect_front msg))
    (cl:cons ':detect_back (detect_back msg))
    (cl:cons ':detect_left (detect_left msg))
    (cl:cons ':detect_right (detect_right msg))
))
