;; Auto-generated. Do not edit!


(when (boundp 'IRIS24::PC2BS)
  (if (not (find-package "IRIS24"))
    (make-package "IRIS24"))
  (shadow 'PC2BS (find-package "IRIS24")))
(unless (find-package "IRIS24::PC2BS")
  (make-package "IRIS24::PC2BS"))

(in-package "ROS")
;;//! \htmlinclude PC2BS.msg.html


(defclass IRIS24::PC2BS
  :super ros::object
  :slots (_pos_x _pos_y _pos_theta _v_x _v_y _v_theta _bola_x _bola_y ))

(defmethod IRIS24::PC2BS
  (:init
   (&key
    ((:pos_x __pos_x) 0)
    ((:pos_y __pos_y) 0)
    ((:pos_theta __pos_theta) 0)
    ((:v_x __v_x) 0)
    ((:v_y __v_y) 0)
    ((:v_theta __v_theta) 0)
    ((:bola_x __bola_x) 0)
    ((:bola_y __bola_y) 0)
    )
   (send-super :init)
   (setq _pos_x (round __pos_x))
   (setq _pos_y (round __pos_y))
   (setq _pos_theta (round __pos_theta))
   (setq _v_x (round __v_x))
   (setq _v_y (round __v_y))
   (setq _v_theta (round __v_theta))
   (setq _bola_x (round __bola_x))
   (setq _bola_y (round __bola_y))
   self)
  (:pos_x
   (&optional __pos_x)
   (if __pos_x (setq _pos_x __pos_x)) _pos_x)
  (:pos_y
   (&optional __pos_y)
   (if __pos_y (setq _pos_y __pos_y)) _pos_y)
  (:pos_theta
   (&optional __pos_theta)
   (if __pos_theta (setq _pos_theta __pos_theta)) _pos_theta)
  (:v_x
   (&optional __v_x)
   (if __v_x (setq _v_x __v_x)) _v_x)
  (:v_y
   (&optional __v_y)
   (if __v_y (setq _v_y __v_y)) _v_y)
  (:v_theta
   (&optional __v_theta)
   (if __v_theta (setq _v_theta __v_theta)) _v_theta)
  (:bola_x
   (&optional __bola_x)
   (if __bola_x (setq _bola_x __bola_x)) _bola_x)
  (:bola_y
   (&optional __bola_y)
   (if __bola_y (setq _bola_y __bola_y)) _bola_y)
  (:serialization-length
   ()
   (+
    ;; int16 _pos_x
    2
    ;; int16 _pos_y
    2
    ;; int16 _pos_theta
    2
    ;; int16 _v_x
    2
    ;; int16 _v_y
    2
    ;; int16 _v_theta
    2
    ;; int16 _bola_x
    2
    ;; int16 _bola_y
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _pos_x
       (write-word _pos_x s)
     ;; int16 _pos_y
       (write-word _pos_y s)
     ;; int16 _pos_theta
       (write-word _pos_theta s)
     ;; int16 _v_x
       (write-word _v_x s)
     ;; int16 _v_y
       (write-word _v_y s)
     ;; int16 _v_theta
       (write-word _v_theta s)
     ;; int16 _bola_x
       (write-word _bola_x s)
     ;; int16 _bola_y
       (write-word _bola_y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _pos_x
     (setq _pos_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _pos_y
     (setq _pos_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _pos_theta
     (setq _pos_theta (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _v_x
     (setq _v_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _v_y
     (setq _v_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _v_theta
     (setq _v_theta (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _bola_x
     (setq _bola_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _bola_y
     (setq _bola_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get IRIS24::PC2BS :md5sum-) "3a53a747ba62c0bdacb7a65cdfc72b39")
(setf (get IRIS24::PC2BS :datatype-) "IRIS24/PC2BS")
(setf (get IRIS24::PC2BS :definition-)
      "int16 pos_x
int16 pos_y
int16 pos_theta
int16 v_x
int16 v_y
int16 v_theta
int16 bola_x
int16 bola_y
")



(provide :IRIS24/PC2BS "3a53a747ba62c0bdacb7a65cdfc72b39")


