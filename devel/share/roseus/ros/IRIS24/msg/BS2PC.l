;; Auto-generated. Do not edit!


(when (boundp 'IRIS24::BS2PC)
  (if (not (find-package "IRIS24"))
    (make-package "IRIS24"))
  (shadow 'BS2PC (find-package "IRIS24")))
(unless (find-package "IRIS24::BS2PC")
  (make-package "IRIS24::BS2PC"))

(in-package "ROS")
;;//! \htmlinclude BS2PC.msg.html


(defclass IRIS24::BS2PC
  :super ros::object
  :slots (_status _tujuan_x _tujuan_y ))

(defmethod IRIS24::BS2PC
  (:init
   (&key
    ((:status __status) 0)
    ((:tujuan_x __tujuan_x) 0)
    ((:tujuan_y __tujuan_y) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _tujuan_x (round __tujuan_x))
   (setq _tujuan_y (round __tujuan_y))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:tujuan_x
   (&optional __tujuan_x)
   (if __tujuan_x (setq _tujuan_x __tujuan_x)) _tujuan_x)
  (:tujuan_y
   (&optional __tujuan_y)
   (if __tujuan_y (setq _tujuan_y __tujuan_y)) _tujuan_y)
  (:serialization-length
   ()
   (+
    ;; int8 _status
    1
    ;; int16 _tujuan_x
    2
    ;; int16 _tujuan_y
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _status
       (write-byte _status s)
     ;; int16 _tujuan_x
       (write-word _tujuan_x s)
     ;; int16 _tujuan_y
       (write-word _tujuan_y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;; int16 _tujuan_x
     (setq _tujuan_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _tujuan_y
     (setq _tujuan_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get IRIS24::BS2PC :md5sum-) "b9347be61b65295736981e367dd02681")
(setf (get IRIS24::BS2PC :datatype-) "IRIS24/BS2PC")
(setf (get IRIS24::BS2PC :definition-)
      "int8 status
int16 tujuan_x
int16 tujuan_y
")



(provide :IRIS24/BS2PC "b9347be61b65295736981e367dd02681")


