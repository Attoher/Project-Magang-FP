;; Auto-generated. Do not edit!


(when (boundp 'IRIS24::TT)
  (if (not (find-package "IRIS24"))
    (make-package "IRIS24"))
  (shadow 'TT (find-package "IRIS24")))
(unless (find-package "IRIS24::TT")
  (make-package "IRIS24::TT"))

(in-package "ROS")
;;//! \htmlinclude TT.msg.html


(defclass IRIS24::TT
  :super ros::object
  :slots (_pindahbola_x _pindahbola_y ))

(defmethod IRIS24::TT
  (:init
   (&key
    ((:pindahbola_x __pindahbola_x) 0)
    ((:pindahbola_y __pindahbola_y) 0)
    )
   (send-super :init)
   (setq _pindahbola_x (round __pindahbola_x))
   (setq _pindahbola_y (round __pindahbola_y))
   self)
  (:pindahbola_x
   (&optional __pindahbola_x)
   (if __pindahbola_x (setq _pindahbola_x __pindahbola_x)) _pindahbola_x)
  (:pindahbola_y
   (&optional __pindahbola_y)
   (if __pindahbola_y (setq _pindahbola_y __pindahbola_y)) _pindahbola_y)
  (:serialization-length
   ()
   (+
    ;; int16 _pindahbola_x
    2
    ;; int16 _pindahbola_y
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _pindahbola_x
       (write-word _pindahbola_x s)
     ;; int16 _pindahbola_y
       (write-word _pindahbola_y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _pindahbola_x
     (setq _pindahbola_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _pindahbola_y
     (setq _pindahbola_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get IRIS24::TT :md5sum-) "42509896b73070f28322acd500e78fe5")
(setf (get IRIS24::TT :datatype-) "IRIS24/TT")
(setf (get IRIS24::TT :definition-)
      "int16 pindahbola_x
int16 pindahbola_y
")



(provide :IRIS24/TT "42509896b73070f28322acd500e78fe5")


