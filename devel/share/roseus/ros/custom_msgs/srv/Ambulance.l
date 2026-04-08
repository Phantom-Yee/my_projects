;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::Ambulance)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'Ambulance (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::AMBULANCE")
  (make-package "CUSTOM_MSGS::AMBULANCE"))
(unless (find-package "CUSTOM_MSGS::AMBULANCEREQUEST")
  (make-package "CUSTOM_MSGS::AMBULANCEREQUEST"))
(unless (find-package "CUSTOM_MSGS::AMBULANCERESPONSE")
  (make-package "CUSTOM_MSGS::AMBULANCERESPONSE"))

(in-package "ROS")





(defclass custom_msgs::AmbulanceRequest
  :super ros::object
  :slots ())

(defmethod custom_msgs::AmbulanceRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass custom_msgs::AmbulanceResponse
  :super ros::object
  :slots (_IsAmbulance ))

(defmethod custom_msgs::AmbulanceResponse
  (:init
   (&key
    ((:IsAmbulance __IsAmbulance) nil)
    )
   (send-super :init)
   (setq _IsAmbulance __IsAmbulance)
   self)
  (:IsAmbulance
   (&optional (__IsAmbulance :null))
   (if (not (eq __IsAmbulance :null)) (setq _IsAmbulance __IsAmbulance)) _IsAmbulance)
  (:serialization-length
   ()
   (+
    ;; bool _IsAmbulance
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _IsAmbulance
       (if _IsAmbulance (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _IsAmbulance
     (setq _IsAmbulance (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass custom_msgs::Ambulance
  :super ros::object
  :slots ())

(setf (get custom_msgs::Ambulance :md5sum-) "d2b9f78e4db8bc60eda8a99bc31095fc")
(setf (get custom_msgs::Ambulance :datatype-) "custom_msgs/Ambulance")
(setf (get custom_msgs::Ambulance :request) custom_msgs::AmbulanceRequest)
(setf (get custom_msgs::Ambulance :response) custom_msgs::AmbulanceResponse)

(defmethod custom_msgs::AmbulanceRequest
  (:response () (instance custom_msgs::AmbulanceResponse :init)))

(setf (get custom_msgs::AmbulanceRequest :md5sum-) "d2b9f78e4db8bc60eda8a99bc31095fc")
(setf (get custom_msgs::AmbulanceRequest :datatype-) "custom_msgs/AmbulanceRequest")
(setf (get custom_msgs::AmbulanceRequest :definition-)
      "#------------------------------
#救护车请求
#------------------------------

---
bool IsAmbulance          #是否有救护车 
")

(setf (get custom_msgs::AmbulanceResponse :md5sum-) "d2b9f78e4db8bc60eda8a99bc31095fc")
(setf (get custom_msgs::AmbulanceResponse :datatype-) "custom_msgs/AmbulanceResponse")
(setf (get custom_msgs::AmbulanceResponse :definition-)
      "#------------------------------
#救护车请求
#------------------------------

---
bool IsAmbulance          #是否有救护车 
")



(provide :custom_msgs/Ambulance "d2b9f78e4db8bc60eda8a99bc31095fc")


