; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude ImageDetect.msg.html

(cl:defclass <ImageDetect> (roslisp-msg-protocol:ros-message)
  ((color
    :reader color
    :initarg :color
    :type cl:integer
    :initform 0))
)

(cl:defclass ImageDetect (<ImageDetect>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageDetect>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageDetect)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<ImageDetect> is deprecated: use custom_msgs-msg:ImageDetect instead.")))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <ImageDetect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:color-val is deprecated.  Use custom_msgs-msg:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ImageDetect>)))
    "Constants for message type '<ImageDetect>"
  '((:INVALID . 0)
    (:RED . 1)
    (:GREEN . 2)
    (:YELLOW . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ImageDetect)))
    "Constants for message type 'ImageDetect"
  '((:INVALID . 0)
    (:RED . 1)
    (:GREEN . 2)
    (:YELLOW . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageDetect>) ostream)
  "Serializes a message object of type '<ImageDetect>"
  (cl:let* ((signed (cl:slot-value msg 'color)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageDetect>) istream)
  "Deserializes a message object of type '<ImageDetect>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageDetect>)))
  "Returns string type for a message object of type '<ImageDetect>"
  "custom_msgs/ImageDetect")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageDetect)))
  "Returns string type for a message object of type 'ImageDetect"
  "custom_msgs/ImageDetect")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageDetect>)))
  "Returns md5sum for a message object of type '<ImageDetect>"
  "ed554179081ab2399c38deea6a52f088")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageDetect)))
  "Returns md5sum for a message object of type 'ImageDetect"
  "ed554179081ab2399c38deea6a52f088")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageDetect>)))
  "Returns full string definition for message of type '<ImageDetect>"
  (cl:format cl:nil "int32 INVALID=0~%int32 RED=1~%int32 GREEN=2~%int32 YELLOW=3~%~%int32 color ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageDetect)))
  "Returns full string definition for message of type 'ImageDetect"
  (cl:format cl:nil "int32 INVALID=0~%int32 RED=1~%int32 GREEN=2~%int32 YELLOW=3~%~%int32 color ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageDetect>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageDetect>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageDetect
    (cl:cons ':color (color msg))
))
