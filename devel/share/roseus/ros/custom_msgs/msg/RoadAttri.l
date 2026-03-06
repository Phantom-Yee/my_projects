;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::RoadAttri)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'RoadAttri (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::ROADATTRI")
  (make-package "CUSTOM_MSGS::ROADATTRI"))

(in-package "ROS")
;;//! \htmlinclude RoadAttri.msg.html


(defclass custom_msgs::RoadAttri
  :super ros::object
  :slots (_velocity _road_width _aeb_front _aeb_back _aeb_left _aeb_right _detect_front _detect_back _detect_left _detect_right ))

(defmethod custom_msgs::RoadAttri
  (:init
   (&key
    ((:velocity __velocity) 0.0)
    ((:road_width __road_width) 0.0)
    ((:aeb_front __aeb_front) 0.0)
    ((:aeb_back __aeb_back) 0.0)
    ((:aeb_left __aeb_left) 0.0)
    ((:aeb_right __aeb_right) 0.0)
    ((:detect_front __detect_front) 0.0)
    ((:detect_back __detect_back) 0.0)
    ((:detect_left __detect_left) 0.0)
    ((:detect_right __detect_right) 0.0)
    )
   (send-super :init)
   (setq _velocity (float __velocity))
   (setq _road_width (float __road_width))
   (setq _aeb_front (float __aeb_front))
   (setq _aeb_back (float __aeb_back))
   (setq _aeb_left (float __aeb_left))
   (setq _aeb_right (float __aeb_right))
   (setq _detect_front (float __detect_front))
   (setq _detect_back (float __detect_back))
   (setq _detect_left (float __detect_left))
   (setq _detect_right (float __detect_right))
   self)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:road_width
   (&optional __road_width)
   (if __road_width (setq _road_width __road_width)) _road_width)
  (:aeb_front
   (&optional __aeb_front)
   (if __aeb_front (setq _aeb_front __aeb_front)) _aeb_front)
  (:aeb_back
   (&optional __aeb_back)
   (if __aeb_back (setq _aeb_back __aeb_back)) _aeb_back)
  (:aeb_left
   (&optional __aeb_left)
   (if __aeb_left (setq _aeb_left __aeb_left)) _aeb_left)
  (:aeb_right
   (&optional __aeb_right)
   (if __aeb_right (setq _aeb_right __aeb_right)) _aeb_right)
  (:detect_front
   (&optional __detect_front)
   (if __detect_front (setq _detect_front __detect_front)) _detect_front)
  (:detect_back
   (&optional __detect_back)
   (if __detect_back (setq _detect_back __detect_back)) _detect_back)
  (:detect_left
   (&optional __detect_left)
   (if __detect_left (setq _detect_left __detect_left)) _detect_left)
  (:detect_right
   (&optional __detect_right)
   (if __detect_right (setq _detect_right __detect_right)) _detect_right)
  (:serialization-length
   ()
   (+
    ;; float32 _velocity
    4
    ;; float32 _road_width
    4
    ;; float32 _aeb_front
    4
    ;; float32 _aeb_back
    4
    ;; float32 _aeb_left
    4
    ;; float32 _aeb_right
    4
    ;; float32 _detect_front
    4
    ;; float32 _detect_back
    4
    ;; float32 _detect_left
    4
    ;; float32 _detect_right
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _road_width
       (sys::poke _road_width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _aeb_front
       (sys::poke _aeb_front (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _aeb_back
       (sys::poke _aeb_back (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _aeb_left
       (sys::poke _aeb_left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _aeb_right
       (sys::poke _aeb_right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _detect_front
       (sys::poke _detect_front (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _detect_back
       (sys::poke _detect_back (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _detect_left
       (sys::poke _detect_left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _detect_right
       (sys::poke _detect_right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _road_width
     (setq _road_width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _aeb_front
     (setq _aeb_front (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _aeb_back
     (setq _aeb_back (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _aeb_left
     (setq _aeb_left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _aeb_right
     (setq _aeb_right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _detect_front
     (setq _detect_front (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _detect_back
     (setq _detect_back (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _detect_left
     (setq _detect_left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _detect_right
     (setq _detect_right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get custom_msgs::RoadAttri :md5sum-) "3a92758409755c69dc8ed8773a4195c9")
(setf (get custom_msgs::RoadAttri :datatype-) "custom_msgs/RoadAttri")
(setf (get custom_msgs::RoadAttri :definition-)
      "#---------------------------------------------------------------
# 作者 ：lsxing
# 时间 ：2020.12.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：描述道路基本属性的消息结构
#----------------------------------------------------------------   

float32 velocity     #期望车速

float32 road_width   #道路宽度

float32 aeb_front   #AEB范围
float32 aeb_back
float32 aeb_left
float32 aeb_right

float32 detect_front  #检测范围
float32 detect_back
float32 detect_left
float32 detect_right

")



(provide :custom_msgs/RoadAttri "3a92758409755c69dc8ed8773a4195c9")


