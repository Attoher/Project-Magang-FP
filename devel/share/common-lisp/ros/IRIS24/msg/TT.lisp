; Auto-generated. Do not edit!


(cl:in-package IRIS24-msg)


;//! \htmlinclude TT.msg.html

(cl:defclass <TT> (roslisp-msg-protocol:ros-message)
  ((pindahbola_x
    :reader pindahbola_x
    :initarg :pindahbola_x
    :type cl:fixnum
    :initform 0)
   (pindahbola_y
    :reader pindahbola_y
    :initarg :pindahbola_y
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TT (<TT>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TT>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TT)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name IRIS24-msg:<TT> is deprecated: use IRIS24-msg:TT instead.")))

(cl:ensure-generic-function 'pindahbola_x-val :lambda-list '(m))
(cl:defmethod pindahbola_x-val ((m <TT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader IRIS24-msg:pindahbola_x-val is deprecated.  Use IRIS24-msg:pindahbola_x instead.")
  (pindahbola_x m))

(cl:ensure-generic-function 'pindahbola_y-val :lambda-list '(m))
(cl:defmethod pindahbola_y-val ((m <TT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader IRIS24-msg:pindahbola_y-val is deprecated.  Use IRIS24-msg:pindahbola_y instead.")
  (pindahbola_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TT>) ostream)
  "Serializes a message object of type '<TT>"
  (cl:let* ((signed (cl:slot-value msg 'pindahbola_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pindahbola_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TT>) istream)
  "Deserializes a message object of type '<TT>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pindahbola_x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pindahbola_y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TT>)))
  "Returns string type for a message object of type '<TT>"
  "IRIS24/TT")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TT)))
  "Returns string type for a message object of type 'TT"
  "IRIS24/TT")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TT>)))
  "Returns md5sum for a message object of type '<TT>"
  "42509896b73070f28322acd500e78fe5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TT)))
  "Returns md5sum for a message object of type 'TT"
  "42509896b73070f28322acd500e78fe5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TT>)))
  "Returns full string definition for message of type '<TT>"
  (cl:format cl:nil "int16 pindahbola_x~%int16 pindahbola_y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TT)))
  "Returns full string definition for message of type 'TT"
  (cl:format cl:nil "int16 pindahbola_x~%int16 pindahbola_y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TT>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TT>))
  "Converts a ROS message object to a list"
  (cl:list 'TT
    (cl:cons ':pindahbola_x (pindahbola_x msg))
    (cl:cons ':pindahbola_y (pindahbola_y msg))
))
