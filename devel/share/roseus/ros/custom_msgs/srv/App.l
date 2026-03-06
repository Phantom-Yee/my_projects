;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::App)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'App (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::APP")
  (make-package "CUSTOM_MSGS::APP"))
(unless (find-package "CUSTOM_MSGS::APPREQUEST")
  (make-package "CUSTOM_MSGS::APPREQUEST"))
(unless (find-package "CUSTOM_MSGS::APPRESPONSE")
  (make-package "CUSTOM_MSGS::APPRESPONSE"))

(in-package "ROS")





(defclass custom_msgs::AppRequest
  :super ros::object
  :slots (_isSend _sendbuf ))

(defmethod custom_msgs::AppRequest
  (:init
   (&key
    ((:isSend __isSend) 0)
    ((:sendbuf __sendbuf) "")
    )
   (send-super :init)
   (setq _isSend (round __isSend))
   (setq _sendbuf (string __sendbuf))
   self)
  (:isSend
   (&optional __isSend)
   (if __isSend (setq _isSend __isSend)) _isSend)
  (:sendbuf
   (&optional __sendbuf)
   (if __sendbuf (setq _sendbuf __sendbuf)) _sendbuf)
  (:serialization-length
   ()
   (+
    ;; uint8 _isSend
    1
    ;; string _sendbuf
    4 (length _sendbuf)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _isSend
       (write-byte _isSend s)
     ;; string _sendbuf
       (write-long (length _sendbuf) s) (princ _sendbuf s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _isSend
     (setq _isSend (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _sendbuf
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sendbuf (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass custom_msgs::AppResponse
  :super ros::object
  :slots (_recvbuf ))

(defmethod custom_msgs::AppResponse
  (:init
   (&key
    ((:recvbuf __recvbuf) "")
    )
   (send-super :init)
   (setq _recvbuf (string __recvbuf))
   self)
  (:recvbuf
   (&optional __recvbuf)
   (if __recvbuf (setq _recvbuf __recvbuf)) _recvbuf)
  (:serialization-length
   ()
   (+
    ;; string _recvbuf
    4 (length _recvbuf)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _recvbuf
       (write-long (length _recvbuf) s) (princ _recvbuf s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _recvbuf
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _recvbuf (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass custom_msgs::App
  :super ros::object
  :slots ())

(setf (get custom_msgs::App :md5sum-) "1d44dccf337b7714e82dab40e79d7373")
(setf (get custom_msgs::App :datatype-) "custom_msgs/App")
(setf (get custom_msgs::App :request) custom_msgs::AppRequest)
(setf (get custom_msgs::App :response) custom_msgs::AppResponse)

(defmethod custom_msgs::AppRequest
  (:response () (instance custom_msgs::AppResponse :init)))

(setf (get custom_msgs::AppRequest :md5sum-) "1d44dccf337b7714e82dab40e79d7373")
(setf (get custom_msgs::AppRequest :datatype-) "custom_msgs/AppRequest")
(setf (get custom_msgs::AppRequest :definition-)
      "#------------------------------
#接收或者发送给APP
#------------------------------
uint8  isSend    # 1:发送 0:接收
string sendbuf           
---
string recvbuf            

")

(setf (get custom_msgs::AppResponse :md5sum-) "1d44dccf337b7714e82dab40e79d7373")
(setf (get custom_msgs::AppResponse :datatype-) "custom_msgs/AppResponse")
(setf (get custom_msgs::AppResponse :definition-)
      "#------------------------------
#接收或者发送给APP
#------------------------------
uint8  isSend    # 1:发送 0:接收
string sendbuf           
---
string recvbuf            

")



(provide :custom_msgs/App "1d44dccf337b7714e82dab40e79d7373")


