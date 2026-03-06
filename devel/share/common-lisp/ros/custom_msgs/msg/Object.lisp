; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude Object.msg.html

(cl:defclass <Object> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (bbox_point
    :reader bbox_point
    :initarg :bbox_point
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 8 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (vx
    :reader vx
    :initarg :vx
    :type cl:float
    :initform 0.0)
   (vy
    :reader vy
    :initarg :vy
    :type cl:float
    :initform 0.0)
   (v
    :reader v
    :initarg :v
    :type cl:float
    :initform 0.0)
   (lwh
    :reader lwh
    :initarg :lwh
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (x_pos
    :reader x_pos
    :initarg :x_pos
    :type cl:float
    :initform 0.0)
   (y_pos
    :reader y_pos
    :initarg :y_pos
    :type cl:float
    :initform 0.0)
   (s_pos
    :reader s_pos
    :initarg :s_pos
    :type cl:float
    :initform 0.0)
   (d_pos
    :reader d_pos
    :initarg :d_pos
    :type cl:float
    :initform 0.0)
   (lidar_x_pos
    :reader lidar_x_pos
    :initarg :lidar_x_pos
    :type cl:float
    :initform 0.0)
   (lidar_y_pos
    :reader lidar_y_pos
    :initarg :lidar_y_pos
    :type cl:float
    :initform 0.0)
   (lidar_z_pos
    :reader lidar_z_pos
    :initarg :lidar_z_pos
    :type cl:float
    :initform 0.0))
)

(cl:defclass Object (<Object>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Object>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Object)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<Object> is deprecated: use custom_msgs-msg:Object instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:id-val is deprecated.  Use custom_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'bbox_point-val :lambda-list '(m))
(cl:defmethod bbox_point-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:bbox_point-val is deprecated.  Use custom_msgs-msg:bbox_point instead.")
  (bbox_point m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:type-val is deprecated.  Use custom_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'vx-val :lambda-list '(m))
(cl:defmethod vx-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:vx-val is deprecated.  Use custom_msgs-msg:vx instead.")
  (vx m))

(cl:ensure-generic-function 'vy-val :lambda-list '(m))
(cl:defmethod vy-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:vy-val is deprecated.  Use custom_msgs-msg:vy instead.")
  (vy m))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:v-val is deprecated.  Use custom_msgs-msg:v instead.")
  (v m))

(cl:ensure-generic-function 'lwh-val :lambda-list '(m))
(cl:defmethod lwh-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:lwh-val is deprecated.  Use custom_msgs-msg:lwh instead.")
  (lwh m))

(cl:ensure-generic-function 'x_pos-val :lambda-list '(m))
(cl:defmethod x_pos-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:x_pos-val is deprecated.  Use custom_msgs-msg:x_pos instead.")
  (x_pos m))

(cl:ensure-generic-function 'y_pos-val :lambda-list '(m))
(cl:defmethod y_pos-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:y_pos-val is deprecated.  Use custom_msgs-msg:y_pos instead.")
  (y_pos m))

(cl:ensure-generic-function 's_pos-val :lambda-list '(m))
(cl:defmethod s_pos-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:s_pos-val is deprecated.  Use custom_msgs-msg:s_pos instead.")
  (s_pos m))

(cl:ensure-generic-function 'd_pos-val :lambda-list '(m))
(cl:defmethod d_pos-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:d_pos-val is deprecated.  Use custom_msgs-msg:d_pos instead.")
  (d_pos m))

(cl:ensure-generic-function 'lidar_x_pos-val :lambda-list '(m))
(cl:defmethod lidar_x_pos-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:lidar_x_pos-val is deprecated.  Use custom_msgs-msg:lidar_x_pos instead.")
  (lidar_x_pos m))

(cl:ensure-generic-function 'lidar_y_pos-val :lambda-list '(m))
(cl:defmethod lidar_y_pos-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:lidar_y_pos-val is deprecated.  Use custom_msgs-msg:lidar_y_pos instead.")
  (lidar_y_pos m))

(cl:ensure-generic-function 'lidar_z_pos-val :lambda-list '(m))
(cl:defmethod lidar_z_pos-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:lidar_z_pos-val is deprecated.  Use custom_msgs-msg:lidar_z_pos instead.")
  (lidar_z_pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Object>) ostream)
  "Serializes a message object of type '<Object>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bbox_point))
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lwh) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 's_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'd_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lidar_x_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lidar_y_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lidar_z_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Object>) istream)
  "Deserializes a message object of type '<Object>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bbox_point) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'bbox_point)))
    (cl:dotimes (i 8)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lwh) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_pos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_pos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 's_pos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd_pos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lidar_x_pos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lidar_y_pos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lidar_z_pos) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Object>)))
  "Returns string type for a message object of type '<Object>"
  "custom_msgs/Object")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Object)))
  "Returns string type for a message object of type 'Object"
  "custom_msgs/Object")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Object>)))
  "Returns md5sum for a message object of type '<Object>"
  "0c5d7a11908c3607cf6c38606ef53961")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Object)))
  "Returns md5sum for a message object of type 'Object"
  "0c5d7a11908c3607cf6c38606ef53961")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Object>)))
  "Returns full string definition for message of type '<Object>"
  (cl:format cl:nil "#------------------------------~%#经过滤波后的目标~%#------------------------------~%~%~%uint32      id                          #目标id~%geometry_msgs/Point[8]    bbox_point    #目标边框的8个顶点~%int8        type                        #目标类型[-1，unknown][1,car][2,pedestrian]~%~%float32     vx                          #x方向速度，m/s~%float32     vy                          #y方向速度，m/s~%float32     v                           #总速度，km/h~%~%~%geometry_msgs/Vector3       lwh         #x,y,z分别为目标的长宽高,待定~%float32     x_pos                       #x位置，待定~%float32     y_pos                       #y位置，待定~%~%float32     s_pos                       #s位置~%float32     d_pos                       #d位置~%~%float32     lidar_x_pos                 #储存雷达坐标，用于目标跟踪~%float32     lidar_y_pos~%float32     lidar_z_pos~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Object)))
  "Returns full string definition for message of type 'Object"
  (cl:format cl:nil "#------------------------------~%#经过滤波后的目标~%#------------------------------~%~%~%uint32      id                          #目标id~%geometry_msgs/Point[8]    bbox_point    #目标边框的8个顶点~%int8        type                        #目标类型[-1，unknown][1,car][2,pedestrian]~%~%float32     vx                          #x方向速度，m/s~%float32     vy                          #y方向速度，m/s~%float32     v                           #总速度，km/h~%~%~%geometry_msgs/Vector3       lwh         #x,y,z分别为目标的长宽高,待定~%float32     x_pos                       #x位置，待定~%float32     y_pos                       #y位置，待定~%~%float32     s_pos                       #s位置~%float32     d_pos                       #d位置~%~%float32     lidar_x_pos                 #储存雷达坐标，用于目标跟踪~%float32     lidar_y_pos~%float32     lidar_z_pos~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Object>))
  (cl:+ 0
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'bbox_point) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lwh))
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Object>))
  "Converts a ROS message object to a list"
  (cl:list 'Object
    (cl:cons ':id (id msg))
    (cl:cons ':bbox_point (bbox_point msg))
    (cl:cons ':type (type msg))
    (cl:cons ':vx (vx msg))
    (cl:cons ':vy (vy msg))
    (cl:cons ':v (v msg))
    (cl:cons ':lwh (lwh msg))
    (cl:cons ':x_pos (x_pos msg))
    (cl:cons ':y_pos (y_pos msg))
    (cl:cons ':s_pos (s_pos msg))
    (cl:cons ':d_pos (d_pos msg))
    (cl:cons ':lidar_x_pos (lidar_x_pos msg))
    (cl:cons ':lidar_y_pos (lidar_y_pos msg))
    (cl:cons ':lidar_z_pos (lidar_z_pos msg))
))
