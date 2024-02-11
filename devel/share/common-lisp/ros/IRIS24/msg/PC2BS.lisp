; Auto-generated. Do not edit!


(cl:in-package IRIS24-msg)


;//! \htmlinclude PC2BS.msg.html

(cl:defclass <PC2BS> (roslisp-msg-protocol:ros-message)
  ((pos_x
    :reader pos_x
    :initarg :pos_x
    :type cl:fixnum
    :initform 0)
   (pos_y
    :reader pos_y
    :initarg :pos_y
    :type cl:fixnum
    :initform 0)
   (pos_theta
    :reader pos_theta
    :initarg :pos_theta
    :type cl:fixnum
    :initform 0)
   (v_x
    :reader v_x
    :initarg :v_x
    :type cl:fixnum
    :initform 0)
   (v_y
    :reader v_y
    :initarg :v_y
    :type cl:fixnum
    :initform 0)
   (v_theta
    :reader v_theta
    :initarg :v_theta
    :type cl:fixnum
    :initform 0)
   (bola_x
    :reader bola_x
    :initarg :bola_x
    :type cl:fixnum
    :initform 0)
   (bola_y
    :reader bola_y
    :initarg :bola_y
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PC2BS (<PC2BS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PC2BS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PC2BS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name IRIS24-msg:<PC2BS> is deprecated: use IRIS24-msg:PC2BS instead.")))

(cl:ensure-generic-function 'pos_x-val :lambda-list '(m))
(cl:defmethod pos_x-val ((m <PC2BS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader IRIS24-msg:pos_x-val is deprecated.  Use IRIS24-msg:pos_x instead.")
  (pos_x m))

(cl:ensure-generic-function 'pos_y-val :lambda-list '(m))
(cl:defmethod pos_y-val ((m <PC2BS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader IRIS24-msg:pos_y-val is deprecated.  Use IRIS24-msg:pos_y instead.")
  (pos_y m))

(cl:ensure-generic-function 'pos_theta-val :lambda-list '(m))
(cl:defmethod pos_theta-val ((m <PC2BS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader IRIS24-msg:pos_theta-val is deprecated.  Use IRIS24-msg:pos_theta instead.")
  (pos_theta m))

(cl:ensure-generic-function 'v_x-val :lambda-list '(m))
(cl:defmethod v_x-val ((m <PC2BS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader IRIS24-msg:v_x-val is deprecated.  Use IRIS24-msg:v_x instead.")
  (v_x m))

(cl:ensure-generic-function 'v_y-val :lambda-list '(m))
(cl:defmethod v_y-val ((m <PC2BS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader IRIS24-msg:v_y-val is deprecated.  Use IRIS24-msg:v_y instead.")
  (v_y m))

(cl:ensure-generic-function 'v_theta-val :lambda-list '(m))
(cl:defmethod v_theta-val ((m <PC2BS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader IRIS24-msg:v_theta-val is deprecated.  Use IRIS24-msg:v_theta instead.")
  (v_theta m))

(cl:ensure-generic-function 'bola_x-val :lambda-list '(m))
(cl:defmethod bola_x-val ((m <PC2BS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader IRIS24-msg:bola_x-val is deprecated.  Use IRIS24-msg:bola_x instead.")
  (bola_x m))

(cl:ensure-generic-function 'bola_y-val :lambda-list '(m))
(cl:defmethod bola_y-val ((m <PC2BS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader IRIS24-msg:bola_y-val is deprecated.  Use IRIS24-msg:bola_y instead.")
  (bola_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PC2BS>) ostream)
  "Serializes a message object of type '<PC2BS>"
  (cl:let* ((signed (cl:slot-value msg 'pos_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pos_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pos_theta)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'v_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'v_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'v_theta)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'bola_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'bola_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PC2BS>) istream)
  "Deserializes a message object of type '<PC2BS>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos_x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos_y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos_theta) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'v_x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'v_y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'v_theta) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bola_x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bola_y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PC2BS>)))
  "Returns string type for a message object of type '<PC2BS>"
  "IRIS24/PC2BS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PC2BS)))
  "Returns string type for a message object of type 'PC2BS"
  "IRIS24/PC2BS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PC2BS>)))
  "Returns md5sum for a message object of type '<PC2BS>"
  "3a53a747ba62c0bdacb7a65cdfc72b39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PC2BS)))
  "Returns md5sum for a message object of type 'PC2BS"
  "3a53a747ba62c0bdacb7a65cdfc72b39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PC2BS>)))
  "Returns full string definition for message of type '<PC2BS>"
  (cl:format cl:nil "int16 pos_x~%int16 pos_y~%int16 pos_theta~%int16 v_x~%int16 v_y~%int16 v_theta~%int16 bola_x~%int16 bola_y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PC2BS)))
  "Returns full string definition for message of type 'PC2BS"
  (cl:format cl:nil "int16 pos_x~%int16 pos_y~%int16 pos_theta~%int16 v_x~%int16 v_y~%int16 v_theta~%int16 bola_x~%int16 bola_y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PC2BS>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PC2BS>))
  "Converts a ROS message object to a list"
  (cl:list 'PC2BS
    (cl:cons ':pos_x (pos_x msg))
    (cl:cons ':pos_y (pos_y msg))
    (cl:cons ':pos_theta (pos_theta msg))
    (cl:cons ':v_x (v_x msg))
    (cl:cons ':v_y (v_y msg))
    (cl:cons ':v_theta (v_theta msg))
    (cl:cons ':bola_x (bola_x msg))
    (cl:cons ':bola_y (bola_y msg))
))
