;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::ImageDetect)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'ImageDetect (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::IMAGEDETECT")
  (make-package "CUSTOM_MSGS::IMAGEDETECT"))

(in-package "ROS")
;;//! \htmlinclude ImageDetect.msg.html


(intern "*INVALID*" (find-package "CUSTOM_MSGS::IMAGEDETECT"))
(shadow '*INVALID* (find-package "CUSTOM_MSGS::IMAGEDETECT"))
(defconstant custom_msgs::ImageDetect::*INVALID* 0)
(intern "*RED*" (find-package "CUSTOM_MSGS::IMAGEDETECT"))
(shadow '*RED* (find-package "CUSTOM_MSGS::IMAGEDETECT"))
(defconstant custom_msgs::ImageDetect::*RED* 1)
(intern "*GREEN*" (find-package "CUSTOM_MSGS::IMAGEDETECT"))
(shadow '*GREEN* (find-package "CUSTOM_MSGS::IMAGEDETECT"))
(defconstant custom_msgs::ImageDetect::*GREEN* 2)
(intern "*YELLOW*" (find-package "CUSTOM_MSGS::IMAGEDETECT"))
(shadow '*YELLOW* (find-package "CUSTOM_MSGS::IMAGEDETECT"))
(defconstant custom_msgs::ImageDetect::*YELLOW* 3)

(defun custom_msgs::ImageDetect-to-symbol (const)
  (cond
        ((= const 0) 'custom_msgs::ImageDetect::*INVALID*)
        ((= const 1) 'custom_msgs::ImageDetect::*RED*)
        ((= const 2) 'custom_msgs::ImageDetect::*GREEN*)
        ((= const 3) 'custom_msgs::ImageDetect::*YELLOW*)
        (t nil)))

(defclass custom_msgs::ImageDetect
  :super ros::object
  :slots (_color ))

(defmethod custom_msgs::ImageDetect
  (:init
   (&key
    ((:color __color) 0)
    )
   (send-super :init)
   (setq _color (round __color))
   self)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:serialization-length
   ()
   (+
    ;; int32 _color
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _color
       (write-long _color s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _color
     (setq _color (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get custom_msgs::ImageDetect :md5sum-) "ed554179081ab2399c38deea6a52f088")
(setf (get custom_msgs::ImageDetect :datatype-) "custom_msgs/ImageDetect")
(setf (get custom_msgs::ImageDetect :definition-)
      "int32 INVALID=0
int32 RED=1
int32 GREEN=2
int32 YELLOW=3

int32 color 

")



(provide :custom_msgs/ImageDetect "ed554179081ab2399c38deea6a52f088")


