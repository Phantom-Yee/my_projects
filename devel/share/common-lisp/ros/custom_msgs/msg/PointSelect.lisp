; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude PointSelect.msg.html

(cl:defclass <PointSelect> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:float
    :initform 0.0)
   (point_1
    :reader point_1
    :initarg :point_1
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (point_2
    :reader point_2
    :initarg :point_2
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PointSelect (<PointSelect>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PointSelect>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PointSelect)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<PointSelect> is deprecated: use custom_msgs-msg:PointSelect instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <PointSelect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:type-val is deprecated.  Use custom_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'point_1-val :lambda-list '(m))
(cl:defmethod point_1-val ((m <PointSelect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:point_1-val is deprecated.  Use custom_msgs-msg:point_1 instead.")
  (point_1 m))

(cl:ensure-generic-function 'point_2-val :lambda-list '(m))
(cl:defmethod point_2-val ((m <PointSelect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:point_2-val is deprecated.  Use custom_msgs-msg:point_2 instead.")
  (point_2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PointSelect>) ostream)
  "Serializes a message object of type '<PointSelect>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'point_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'point_1))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'point_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'point_2))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PointSelect>) istream)
  "Deserializes a message object of type '<PointSelect>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'type) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'point_1) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'point_1)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'point_2) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'point_2)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PointSelect>)))
  "Returns string type for a message object of type '<PointSelect>"
  "custom_msgs/PointSelect")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PointSelect)))
  "Returns string type for a message object of type 'PointSelect"
  "custom_msgs/PointSelect")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PointSelect>)))
  "Returns md5sum for a message object of type '<PointSelect>"
  "bf7582f3b5bfc0a64281c25459c0b234")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PointSelect)))
  "Returns md5sum for a message object of type 'PointSelect"
  "bf7582f3b5bfc0a64281c25459c0b234")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PointSelect>)))
  "Returns full string definition for message of type '<PointSelect>"
  (cl:format cl:nil "float32     type                         #路径类型 0:无  s 1:直线  2：圆弧~%float32[]   point_1                      #点1~%float32[]   point_2                      #点~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PointSelect)))
  "Returns full string definition for message of type 'PointSelect"
  (cl:format cl:nil "float32     type                         #路径类型 0:无  s 1:直线  2：圆弧~%float32[]   point_1                      #点1~%float32[]   point_2                      #点~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PointSelect>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'point_1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'point_2) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PointSelect>))
  "Converts a ROS message object to a list"
  (cl:list 'PointSelect
    (cl:cons ':type (type msg))
    (cl:cons ':point_1 (point_1 msg))
    (cl:cons ':point_2 (point_2 msg))
))
