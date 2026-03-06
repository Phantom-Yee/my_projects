;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::Warn)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'Warn (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::WARN")
  (make-package "CUSTOM_MSGS::WARN"))
(unless (find-package "CUSTOM_MSGS::WARNREQUEST")
  (make-package "CUSTOM_MSGS::WARNREQUEST"))
(unless (find-package "CUSTOM_MSGS::WARNRESPONSE")
  (make-package "CUSTOM_MSGS::WARNRESPONSE"))

(in-package "ROS")





(defclass custom_msgs::WarnRequest
  :super ros::object
  :slots (_source _code ))

(defmethod custom_msgs::WarnRequest
  (:init
   (&key
    ((:source __source) 0)
    ((:code __code) 0)
    )
   (send-super :init)
   (setq _source (round __source))
   (setq _code (round __code))
   self)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:serialization-length
   ()
   (+
    ;; uint8 _source
    1
    ;; uint8 _code
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _source
       (write-byte _source s)
     ;; uint8 _code
       (write-byte _code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _source
     (setq _source (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _code
     (setq _code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass custom_msgs::WarnResponse
  :super ros::object
  :slots (_isLidarOK _isNaviOK _isCtrlOK _isXavierOK ))

(defmethod custom_msgs::WarnResponse
  (:init
   (&key
    ((:isLidarOK __isLidarOK) 0)
    ((:isNaviOK __isNaviOK) 0)
    ((:isCtrlOK __isCtrlOK) 0)
    ((:isXavierOK __isXavierOK) 0)
    )
   (send-super :init)
   (setq _isLidarOK (round __isLidarOK))
   (setq _isNaviOK (round __isNaviOK))
   (setq _isCtrlOK (round __isCtrlOK))
   (setq _isXavierOK (round __isXavierOK))
   self)
  (:isLidarOK
   (&optional __isLidarOK)
   (if __isLidarOK (setq _isLidarOK __isLidarOK)) _isLidarOK)
  (:isNaviOK
   (&optional __isNaviOK)
   (if __isNaviOK (setq _isNaviOK __isNaviOK)) _isNaviOK)
  (:isCtrlOK
   (&optional __isCtrlOK)
   (if __isCtrlOK (setq _isCtrlOK __isCtrlOK)) _isCtrlOK)
  (:isXavierOK
   (&optional __isXavierOK)
   (if __isXavierOK (setq _isXavierOK __isXavierOK)) _isXavierOK)
  (:serialization-length
   ()
   (+
    ;; uint8 _isLidarOK
    1
    ;; uint8 _isNaviOK
    1
    ;; uint8 _isCtrlOK
    1
    ;; uint8 _isXavierOK
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _isLidarOK
       (write-byte _isLidarOK s)
     ;; uint8 _isNaviOK
       (write-byte _isNaviOK s)
     ;; uint8 _isCtrlOK
       (write-byte _isCtrlOK s)
     ;; uint8 _isXavierOK
       (write-byte _isXavierOK s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _isLidarOK
     (setq _isLidarOK (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _isNaviOK
     (setq _isNaviOK (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _isCtrlOK
     (setq _isCtrlOK (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _isXavierOK
     (setq _isXavierOK (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass custom_msgs::Warn
  :super ros::object
  :slots ())

(setf (get custom_msgs::Warn :md5sum-) "aa3e75dde8fd6fb3a237b3eef4655d49")
(setf (get custom_msgs::Warn :datatype-) "custom_msgs/Warn")
(setf (get custom_msgs::Warn :request) custom_msgs::WarnRequest)
(setf (get custom_msgs::Warn :response) custom_msgs::WarnResponse)

(defmethod custom_msgs::WarnRequest
  (:response () (instance custom_msgs::WarnResponse :init)))

(setf (get custom_msgs::WarnRequest :md5sum-) "aa3e75dde8fd6fb3a237b3eef4655d49")
(setf (get custom_msgs::WarnRequest :datatype-) "custom_msgs/WarnRequest")
(setf (get custom_msgs::WarnRequest :definition-)
      "#------------------------------
#异常报警服务
#------------------------------
uint8  source   #消息来源
uint8  code     #错误码
---
uint8   isLidarOK
uint8   isNaviOK
uint8   isCtrlOK
uint8   isXavierOK


#----------请按照如下注释进行赋值调用服务-----------------

#------获取状态--------
#source-->  0
# 
#无异常申报，但需要获取状态source赋值为0
#-------------------

#------lidar--------
#source-->  1
#code  -->  0x00: 正常 
#           0x01：(某某)雷达错误
#           0x02：(某某)雷达错误
#-------------------

#------navi--------
#source-->  2
#code  -->  0x00: 正常 
#           0x01：
#           0x02：
#-------------------

#------ctrl--------
#source-->  3
#code  -->  0x00: 正常 
#           0x01：
#           0x02：
#-------------------
")

(setf (get custom_msgs::WarnResponse :md5sum-) "aa3e75dde8fd6fb3a237b3eef4655d49")
(setf (get custom_msgs::WarnResponse :datatype-) "custom_msgs/WarnResponse")
(setf (get custom_msgs::WarnResponse :definition-)
      "#------------------------------
#异常报警服务
#------------------------------
uint8  source   #消息来源
uint8  code     #错误码
---
uint8   isLidarOK
uint8   isNaviOK
uint8   isCtrlOK
uint8   isXavierOK


#----------请按照如下注释进行赋值调用服务-----------------

#------获取状态--------
#source-->  0
# 
#无异常申报，但需要获取状态source赋值为0
#-------------------

#------lidar--------
#source-->  1
#code  -->  0x00: 正常 
#           0x01：(某某)雷达错误
#           0x02：(某某)雷达错误
#-------------------

#------navi--------
#source-->  2
#code  -->  0x00: 正常 
#           0x01：
#           0x02：
#-------------------

#------ctrl--------
#source-->  3
#code  -->  0x00: 正常 
#           0x01：
#           0x02：
#-------------------
")



(provide :custom_msgs/Warn "aa3e75dde8fd6fb3a237b3eef4655d49")


