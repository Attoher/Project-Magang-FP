; Auto-generated. Do not edit!


(cl:in-package IRIS24-msg)


;//! \htmlinclude BS2PC.msg.html

(cl:defclass <BS2PC> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (tujuan_x
    :reader tujuan_x
    :initarg :tujuan_x
    :type cl:fixnum
    :initform 0)
   (tujuan_y
    :reader tujuan_y
    :initarg :tujuan_y
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BS2PC (<BS2PC>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BS2PC>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BS2PC)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name IRIS24-msg:<BS2PC> is deprecated: use IRIS24-msg:BS2PC instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <BS2PC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader IRIS24-msg:status-val is deprecated.  Use IRIS24-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'tujuan_x-val :lambda-list '(m))
(cl:defmethod tujuan_x-val ((m <BS2PC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader IRIS24-msg:tujuan_x-val is deprecated.  Use IRIS24-msg:tujuan_x instead.")
  (tujuan_x m))

(cl:ensure-generic-function 'tujuan_y-val :lambda-list '(m))
(cl:defmethod tujuan_y-val ((m <BS2PC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader IRIS24-msg:tujuan_y-val is deprecated.  Use IRIS24-msg:tujuan_y instead.")
  (tujuan_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BS2PC>) ostream)
  "Serializes a message object of type '<BS2PC>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'tujuan_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'tujuan_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BS2PC>) istream)
  "Deserializes a message object of type '<BS2PC>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tujuan_x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tujuan_y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BS2PC>)))
  "Returns string type for a message object of type '<BS2PC>"
  "IRIS24/BS2PC")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BS2PC)))
  "Returns string type for a message object of type 'BS2PC"
  "IRIS24/BS2PC")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BS2PC>)))
  "Returns md5sum for a message object of type '<BS2PC>"
  "b9347be61b65295736981e367dd02681")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BS2PC)))
  "Returns md5sum for a message object of type 'BS2PC"
  "b9347be61b65295736981e367dd02681")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BS2PC>)))
  "Returns full string definition for message of type '<BS2PC>"
  (cl:format cl:nil "int8 status~%int16 tujuan_x~%int16 tujuan_y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BS2PC)))
  "Returns full string definition for message of type 'BS2PC"
  (cl:format cl:nil "int8 status~%int16 tujuan_x~%int16 tujuan_y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BS2PC>))
  (cl:+ 0
     1
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BS2PC>))
  "Converts a ROS message object to a list"
  (cl:list 'BS2PC
    (cl:cons ':status (status msg))
    (cl:cons ':tujuan_x (tujuan_x msg))
    (cl:cons ':tujuan_y (tujuan_y msg))
))
