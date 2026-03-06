;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::LaneLineArray)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'LaneLineArray (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::LANELINEARRAY")
  (make-package "CUSTOM_MSGS::LANELINEARRAY"))

(in-package "ROS")
;;//! \htmlinclude LaneLineArray.msg.html


(defclass custom_msgs::LaneLineArray
  :super ros::object
  :slots (_lines ))

(defmethod custom_msgs::LaneLineArray
  (:init
   (&key
    ((:lines __lines) ())
    )
   (send-super :init)
   (setq _lines __lines)
   self)
  (:lines
   (&rest __lines)
   (if (keywordp (car __lines))
       (send* _lines __lines)
     (progn
       (if __lines (setq _lines (car __lines)))
       _lines)))
  (:serialization-length
   ()
   (+
    ;; custom_msgs/LaneLine[] _lines
    (apply #'+ (send-all _lines :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; custom_msgs/LaneLine[] _lines
     (write-long (length _lines) s)
     (dolist (elem _lines)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; custom_msgs/LaneLine[] _lines
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lines (let (r) (dotimes (i n) (push (instance custom_msgs::LaneLine :init) r)) r))
     (dolist (elem- _lines)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get custom_msgs::LaneLineArray :md5sum-) "b311b16e049dce662db6f00b38186809")
(setf (get custom_msgs::LaneLineArray :datatype-) "custom_msgs/LaneLineArray")
(setf (get custom_msgs::LaneLineArray :definition-)
      "#------------------------------
#车道线序列
#------当前项目中车道线点序列长度为30
#------------------------------

LaneLine[]         lines

================================================================================
MSG: custom_msgs/LaneLine
#------------------------------
#车道线
#------当前项目中车道线点序列长度为30
#------geometry_msgs/Point类型是（x,y,z),目前只填充x,y忽略z
#------------------------------
uint32                         id
uint8                          type
float64[]                      x
float64[]                      y
float64[]                      s

geometry_msgs/Point[]          points
uint8                          current_lane_num
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :custom_msgs/LaneLineArray "b311b16e049dce662db6f00b38186809")


