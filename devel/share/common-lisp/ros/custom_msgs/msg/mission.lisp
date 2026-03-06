; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude mission.msg.html

(cl:defclass <mission> (roslisp-msg-protocol:ros-message)
  ((clutchGear
    :reader clutchGear
    :initarg :clutchGear
    :type cl:fixnum
    :initform 0)
   (clutchEngaged
    :reader clutchEngaged
    :initarg :clutchEngaged
    :type cl:fixnum
    :initform 0)
   (Rotary_enable
    :reader Rotary_enable
    :initarg :Rotary_enable
    :type cl:fixnum
    :initform 0)
   (Rotary_sp_up
    :reader Rotary_sp_up
    :initarg :Rotary_sp_up
    :type cl:fixnum
    :initform 0)
   (Rotary_sp_contain
    :reader Rotary_sp_contain
    :initarg :Rotary_sp_contain
    :type cl:fixnum
    :initform 0)
   (Rotary_sp_down
    :reader Rotary_sp_down
    :initarg :Rotary_sp_down
    :type cl:fixnum
    :initform 0)
   (ACU_Top_Height
    :reader ACU_Top_Height
    :initarg :ACU_Top_Height
    :type cl:fixnum
    :initform 0)
   (ACU_oil
    :reader ACU_oil
    :initarg :ACU_oil
    :type cl:fixnum
    :initform 0)
   (GO_FRONT
    :reader GO_FRONT
    :initarg :GO_FRONT
    :type cl:fixnum
    :initform 0)
   (GO_BACK
    :reader GO_BACK
    :initarg :GO_BACK
    :type cl:fixnum
    :initform 0)
   (GO_LEFT
    :reader GO_LEFT
    :initarg :GO_LEFT
    :type cl:fixnum
    :initform 0)
   (GO_RIGHT
    :reader GO_RIGHT
    :initarg :GO_RIGHT
    :type cl:fixnum
    :initform 0))
)

(cl:defclass mission (<mission>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mission>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mission)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<mission> is deprecated: use custom_msgs-msg:mission instead.")))

(cl:ensure-generic-function 'clutchGear-val :lambda-list '(m))
(cl:defmethod clutchGear-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:clutchGear-val is deprecated.  Use custom_msgs-msg:clutchGear instead.")
  (clutchGear m))

(cl:ensure-generic-function 'clutchEngaged-val :lambda-list '(m))
(cl:defmethod clutchEngaged-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:clutchEngaged-val is deprecated.  Use custom_msgs-msg:clutchEngaged instead.")
  (clutchEngaged m))

(cl:ensure-generic-function 'Rotary_enable-val :lambda-list '(m))
(cl:defmethod Rotary_enable-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:Rotary_enable-val is deprecated.  Use custom_msgs-msg:Rotary_enable instead.")
  (Rotary_enable m))

(cl:ensure-generic-function 'Rotary_sp_up-val :lambda-list '(m))
(cl:defmethod Rotary_sp_up-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:Rotary_sp_up-val is deprecated.  Use custom_msgs-msg:Rotary_sp_up instead.")
  (Rotary_sp_up m))

(cl:ensure-generic-function 'Rotary_sp_contain-val :lambda-list '(m))
(cl:defmethod Rotary_sp_contain-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:Rotary_sp_contain-val is deprecated.  Use custom_msgs-msg:Rotary_sp_contain instead.")
  (Rotary_sp_contain m))

(cl:ensure-generic-function 'Rotary_sp_down-val :lambda-list '(m))
(cl:defmethod Rotary_sp_down-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:Rotary_sp_down-val is deprecated.  Use custom_msgs-msg:Rotary_sp_down instead.")
  (Rotary_sp_down m))

(cl:ensure-generic-function 'ACU_Top_Height-val :lambda-list '(m))
(cl:defmethod ACU_Top_Height-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:ACU_Top_Height-val is deprecated.  Use custom_msgs-msg:ACU_Top_Height instead.")
  (ACU_Top_Height m))

(cl:ensure-generic-function 'ACU_oil-val :lambda-list '(m))
(cl:defmethod ACU_oil-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:ACU_oil-val is deprecated.  Use custom_msgs-msg:ACU_oil instead.")
  (ACU_oil m))

(cl:ensure-generic-function 'GO_FRONT-val :lambda-list '(m))
(cl:defmethod GO_FRONT-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:GO_FRONT-val is deprecated.  Use custom_msgs-msg:GO_FRONT instead.")
  (GO_FRONT m))

(cl:ensure-generic-function 'GO_BACK-val :lambda-list '(m))
(cl:defmethod GO_BACK-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:GO_BACK-val is deprecated.  Use custom_msgs-msg:GO_BACK instead.")
  (GO_BACK m))

(cl:ensure-generic-function 'GO_LEFT-val :lambda-list '(m))
(cl:defmethod GO_LEFT-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:GO_LEFT-val is deprecated.  Use custom_msgs-msg:GO_LEFT instead.")
  (GO_LEFT m))

(cl:ensure-generic-function 'GO_RIGHT-val :lambda-list '(m))
(cl:defmethod GO_RIGHT-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:GO_RIGHT-val is deprecated.  Use custom_msgs-msg:GO_RIGHT instead.")
  (GO_RIGHT m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mission>) ostream)
  "Serializes a message object of type '<mission>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clutchGear)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clutchEngaged)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Rotary_enable)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Rotary_sp_up)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Rotary_sp_contain)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Rotary_sp_down)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ACU_Top_Height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ACU_oil)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GO_FRONT)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'GO_FRONT)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GO_BACK)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'GO_BACK)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GO_LEFT)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'GO_LEFT)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GO_RIGHT)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'GO_RIGHT)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mission>) istream)
  "Deserializes a message object of type '<mission>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clutchGear)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clutchEngaged)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Rotary_enable)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Rotary_sp_up)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Rotary_sp_contain)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Rotary_sp_down)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ACU_Top_Height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ACU_oil)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GO_FRONT)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'GO_FRONT)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GO_BACK)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'GO_BACK)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GO_LEFT)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'GO_LEFT)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GO_RIGHT)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'GO_RIGHT)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mission>)))
  "Returns string type for a message object of type '<mission>"
  "custom_msgs/mission")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mission)))
  "Returns string type for a message object of type 'mission"
  "custom_msgs/mission")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mission>)))
  "Returns md5sum for a message object of type '<mission>"
  "ce8eb385a63ce66b136eb3cb9689016b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mission)))
  "Returns md5sum for a message object of type 'mission"
  "ce8eb385a63ce66b136eb3cb9689016b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mission>)))
  "Returns full string definition for message of type '<mission>"
  (cl:format cl:nil "uint8  clutchGear        #旋耕变速箱挡位 0:低，1：高~%uint8  clutchEngaged     #旋耕使能 0:无效，1：有效~%uint8  Rotary_enable     #沤肥机使能 0：无效，1：有效~%uint8  Rotary_sp_up      #沤肥机转速提升 0：无效，1：有效~%uint8  Rotary_sp_contain #沤肥机转速保持 0：无效，1：有效~%uint8  Rotary_sp_down    #沤肥机转速下降 0：无效，1：有效~%uint8  ACU_Top_Height    #控制选耕高度 ~%uint8  ACU_oil           #控制油门 ~%uint16 GO_FRONT         #控制车辆前行~%uint16 GO_BACK          #控制车辆后退~%uint16 GO_LEFT          #控制车辆左转~%uint16 GO_RIGHT         #控制车辆右转~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mission)))
  "Returns full string definition for message of type 'mission"
  (cl:format cl:nil "uint8  clutchGear        #旋耕变速箱挡位 0:低，1：高~%uint8  clutchEngaged     #旋耕使能 0:无效，1：有效~%uint8  Rotary_enable     #沤肥机使能 0：无效，1：有效~%uint8  Rotary_sp_up      #沤肥机转速提升 0：无效，1：有效~%uint8  Rotary_sp_contain #沤肥机转速保持 0：无效，1：有效~%uint8  Rotary_sp_down    #沤肥机转速下降 0：无效，1：有效~%uint8  ACU_Top_Height    #控制选耕高度 ~%uint8  ACU_oil           #控制油门 ~%uint16 GO_FRONT         #控制车辆前行~%uint16 GO_BACK          #控制车辆后退~%uint16 GO_LEFT          #控制车辆左转~%uint16 GO_RIGHT         #控制车辆右转~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mission>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mission>))
  "Converts a ROS message object to a list"
  (cl:list 'mission
    (cl:cons ':clutchGear (clutchGear msg))
    (cl:cons ':clutchEngaged (clutchEngaged msg))
    (cl:cons ':Rotary_enable (Rotary_enable msg))
    (cl:cons ':Rotary_sp_up (Rotary_sp_up msg))
    (cl:cons ':Rotary_sp_contain (Rotary_sp_contain msg))
    (cl:cons ':Rotary_sp_down (Rotary_sp_down msg))
    (cl:cons ':ACU_Top_Height (ACU_Top_Height msg))
    (cl:cons ':ACU_oil (ACU_oil msg))
    (cl:cons ':GO_FRONT (GO_FRONT msg))
    (cl:cons ':GO_BACK (GO_BACK msg))
    (cl:cons ':GO_LEFT (GO_LEFT msg))
    (cl:cons ':GO_RIGHT (GO_RIGHT msg))
))
