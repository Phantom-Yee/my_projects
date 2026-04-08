;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::mission)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'mission (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::MISSION")
  (make-package "CUSTOM_MSGS::MISSION"))

(in-package "ROS")
;;//! \htmlinclude mission.msg.html


(defclass custom_msgs::mission
  :super ros::object
  :slots (_clutchGear _clutchEngaged _Rotary_enable _Rotary_sp_up _Rotary_sp_contain _Rotary_sp_down _ACU_Top_Height _ACU_oil _GO_FRONT _GO_BACK _GO_LEFT _GO_RIGHT ))

(defmethod custom_msgs::mission
  (:init
   (&key
    ((:clutchGear __clutchGear) 0)
    ((:clutchEngaged __clutchEngaged) 0)
    ((:Rotary_enable __Rotary_enable) 0)
    ((:Rotary_sp_up __Rotary_sp_up) 0)
    ((:Rotary_sp_contain __Rotary_sp_contain) 0)
    ((:Rotary_sp_down __Rotary_sp_down) 0)
    ((:ACU_Top_Height __ACU_Top_Height) 0)
    ((:ACU_oil __ACU_oil) 0)
    ((:GO_FRONT __GO_FRONT) 0)
    ((:GO_BACK __GO_BACK) 0)
    ((:GO_LEFT __GO_LEFT) 0)
    ((:GO_RIGHT __GO_RIGHT) 0)
    )
   (send-super :init)
   (setq _clutchGear (round __clutchGear))
   (setq _clutchEngaged (round __clutchEngaged))
   (setq _Rotary_enable (round __Rotary_enable))
   (setq _Rotary_sp_up (round __Rotary_sp_up))
   (setq _Rotary_sp_contain (round __Rotary_sp_contain))
   (setq _Rotary_sp_down (round __Rotary_sp_down))
   (setq _ACU_Top_Height (round __ACU_Top_Height))
   (setq _ACU_oil (round __ACU_oil))
   (setq _GO_FRONT (round __GO_FRONT))
   (setq _GO_BACK (round __GO_BACK))
   (setq _GO_LEFT (round __GO_LEFT))
   (setq _GO_RIGHT (round __GO_RIGHT))
   self)
  (:clutchGear
   (&optional __clutchGear)
   (if __clutchGear (setq _clutchGear __clutchGear)) _clutchGear)
  (:clutchEngaged
   (&optional __clutchEngaged)
   (if __clutchEngaged (setq _clutchEngaged __clutchEngaged)) _clutchEngaged)
  (:Rotary_enable
   (&optional __Rotary_enable)
   (if __Rotary_enable (setq _Rotary_enable __Rotary_enable)) _Rotary_enable)
  (:Rotary_sp_up
   (&optional __Rotary_sp_up)
   (if __Rotary_sp_up (setq _Rotary_sp_up __Rotary_sp_up)) _Rotary_sp_up)
  (:Rotary_sp_contain
   (&optional __Rotary_sp_contain)
   (if __Rotary_sp_contain (setq _Rotary_sp_contain __Rotary_sp_contain)) _Rotary_sp_contain)
  (:Rotary_sp_down
   (&optional __Rotary_sp_down)
   (if __Rotary_sp_down (setq _Rotary_sp_down __Rotary_sp_down)) _Rotary_sp_down)
  (:ACU_Top_Height
   (&optional __ACU_Top_Height)
   (if __ACU_Top_Height (setq _ACU_Top_Height __ACU_Top_Height)) _ACU_Top_Height)
  (:ACU_oil
   (&optional __ACU_oil)
   (if __ACU_oil (setq _ACU_oil __ACU_oil)) _ACU_oil)
  (:GO_FRONT
   (&optional __GO_FRONT)
   (if __GO_FRONT (setq _GO_FRONT __GO_FRONT)) _GO_FRONT)
  (:GO_BACK
   (&optional __GO_BACK)
   (if __GO_BACK (setq _GO_BACK __GO_BACK)) _GO_BACK)
  (:GO_LEFT
   (&optional __GO_LEFT)
   (if __GO_LEFT (setq _GO_LEFT __GO_LEFT)) _GO_LEFT)
  (:GO_RIGHT
   (&optional __GO_RIGHT)
   (if __GO_RIGHT (setq _GO_RIGHT __GO_RIGHT)) _GO_RIGHT)
  (:serialization-length
   ()
   (+
    ;; uint8 _clutchGear
    1
    ;; uint8 _clutchEngaged
    1
    ;; uint8 _Rotary_enable
    1
    ;; uint8 _Rotary_sp_up
    1
    ;; uint8 _Rotary_sp_contain
    1
    ;; uint8 _Rotary_sp_down
    1
    ;; uint8 _ACU_Top_Height
    1
    ;; uint8 _ACU_oil
    1
    ;; uint16 _GO_FRONT
    2
    ;; uint16 _GO_BACK
    2
    ;; uint16 _GO_LEFT
    2
    ;; uint16 _GO_RIGHT
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _clutchGear
       (write-byte _clutchGear s)
     ;; uint8 _clutchEngaged
       (write-byte _clutchEngaged s)
     ;; uint8 _Rotary_enable
       (write-byte _Rotary_enable s)
     ;; uint8 _Rotary_sp_up
       (write-byte _Rotary_sp_up s)
     ;; uint8 _Rotary_sp_contain
       (write-byte _Rotary_sp_contain s)
     ;; uint8 _Rotary_sp_down
       (write-byte _Rotary_sp_down s)
     ;; uint8 _ACU_Top_Height
       (write-byte _ACU_Top_Height s)
     ;; uint8 _ACU_oil
       (write-byte _ACU_oil s)
     ;; uint16 _GO_FRONT
       (write-word _GO_FRONT s)
     ;; uint16 _GO_BACK
       (write-word _GO_BACK s)
     ;; uint16 _GO_LEFT
       (write-word _GO_LEFT s)
     ;; uint16 _GO_RIGHT
       (write-word _GO_RIGHT s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _clutchGear
     (setq _clutchGear (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _clutchEngaged
     (setq _clutchEngaged (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Rotary_enable
     (setq _Rotary_enable (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Rotary_sp_up
     (setq _Rotary_sp_up (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Rotary_sp_contain
     (setq _Rotary_sp_contain (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Rotary_sp_down
     (setq _Rotary_sp_down (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ACU_Top_Height
     (setq _ACU_Top_Height (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ACU_oil
     (setq _ACU_oil (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _GO_FRONT
     (setq _GO_FRONT (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _GO_BACK
     (setq _GO_BACK (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _GO_LEFT
     (setq _GO_LEFT (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _GO_RIGHT
     (setq _GO_RIGHT (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get custom_msgs::mission :md5sum-) "ce8eb385a63ce66b136eb3cb9689016b")
(setf (get custom_msgs::mission :datatype-) "custom_msgs/mission")
(setf (get custom_msgs::mission :definition-)
      "uint8  clutchGear        #旋耕变速箱挡位 0:低，1：高
uint8  clutchEngaged     #旋耕使能 0:无效，1：有效
uint8  Rotary_enable     #沤肥机使能 0：无效，1：有效
uint8  Rotary_sp_up      #沤肥机转速提升 0：无效，1：有效
uint8  Rotary_sp_contain #沤肥机转速保持 0：无效，1：有效
uint8  Rotary_sp_down    #沤肥机转速下降 0：无效，1：有效
uint8  ACU_Top_Height    #控制选耕高度 
uint8  ACU_oil           #控制油门 
uint16 GO_FRONT         #控制车辆前行
uint16 GO_BACK          #控制车辆后退
uint16 GO_LEFT          #控制车辆左转
uint16 GO_RIGHT         #控制车辆右转
")



(provide :custom_msgs/mission "ce8eb385a63ce66b136eb3cb9689016b")


