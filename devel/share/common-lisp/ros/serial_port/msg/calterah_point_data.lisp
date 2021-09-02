; Auto-generated. Do not edit!


(cl:in-package serial_port-msg)


;//! \htmlinclude calterah_point_data.msg.html

(cl:defclass <calterah_point_data> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:integer
    :initform 0)
   (frame_size
    :reader frame_size
    :initarg :frame_size
    :type cl:integer
    :initform 0)
   (P
    :reader P
    :initarg :P
    :type (cl:vector cl:float)
   :initform (cl:make-array 150 :element-type 'cl:float :initial-element 0.0))
   (range
    :reader range
    :initarg :range
    :type (cl:vector cl:float)
   :initform (cl:make-array 150 :element-type 'cl:float :initial-element 0.0))
   (vel
    :reader vel
    :initarg :vel
    :type (cl:vector cl:float)
   :initform (cl:make-array 150 :element-type 'cl:float :initial-element 0.0))
   (ang
    :reader ang
    :initarg :ang
    :type (cl:vector cl:float)
   :initform (cl:make-array 150 :element-type 'cl:float :initial-element 0.0))
   (ang_elv
    :reader ang_elv
    :initarg :ang_elv
    :type (cl:vector cl:float)
   :initform (cl:make-array 150 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass calterah_point_data (<calterah_point_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <calterah_point_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'calterah_point_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name serial_port-msg:<calterah_point_data> is deprecated: use serial_port-msg:calterah_point_data instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <calterah_point_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:frame_id-val is deprecated.  Use serial_port-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'frame_size-val :lambda-list '(m))
(cl:defmethod frame_size-val ((m <calterah_point_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:frame_size-val is deprecated.  Use serial_port-msg:frame_size instead.")
  (frame_size m))

(cl:ensure-generic-function 'P-val :lambda-list '(m))
(cl:defmethod P-val ((m <calterah_point_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:P-val is deprecated.  Use serial_port-msg:P instead.")
  (P m))

(cl:ensure-generic-function 'range-val :lambda-list '(m))
(cl:defmethod range-val ((m <calterah_point_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:range-val is deprecated.  Use serial_port-msg:range instead.")
  (range m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <calterah_point_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:vel-val is deprecated.  Use serial_port-msg:vel instead.")
  (vel m))

(cl:ensure-generic-function 'ang-val :lambda-list '(m))
(cl:defmethod ang-val ((m <calterah_point_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:ang-val is deprecated.  Use serial_port-msg:ang instead.")
  (ang m))

(cl:ensure-generic-function 'ang_elv-val :lambda-list '(m))
(cl:defmethod ang_elv-val ((m <calterah_point_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:ang_elv-val is deprecated.  Use serial_port-msg:ang_elv instead.")
  (ang_elv m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <calterah_point_data>) ostream)
  "Serializes a message object of type '<calterah_point_data>"
  (cl:let* ((signed (cl:slot-value msg 'frame_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'frame_size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'P))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'range))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'vel))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'ang))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'ang_elv))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <calterah_point_data>) istream)
  "Deserializes a message object of type '<calterah_point_data>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_size) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:setf (cl:slot-value msg 'P) (cl:make-array 150))
  (cl:let ((vals (cl:slot-value msg 'P)))
    (cl:dotimes (i 150)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'range) (cl:make-array 150))
  (cl:let ((vals (cl:slot-value msg 'range)))
    (cl:dotimes (i 150)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'vel) (cl:make-array 150))
  (cl:let ((vals (cl:slot-value msg 'vel)))
    (cl:dotimes (i 150)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'ang) (cl:make-array 150))
  (cl:let ((vals (cl:slot-value msg 'ang)))
    (cl:dotimes (i 150)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'ang_elv) (cl:make-array 150))
  (cl:let ((vals (cl:slot-value msg 'ang_elv)))
    (cl:dotimes (i 150)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<calterah_point_data>)))
  "Returns string type for a message object of type '<calterah_point_data>"
  "serial_port/calterah_point_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'calterah_point_data)))
  "Returns string type for a message object of type 'calterah_point_data"
  "serial_port/calterah_point_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<calterah_point_data>)))
  "Returns md5sum for a message object of type '<calterah_point_data>"
  "6f9b38ae16785d52e5632721cd27c921")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'calterah_point_data)))
  "Returns md5sum for a message object of type 'calterah_point_data"
  "6f9b38ae16785d52e5632721cd27c921")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<calterah_point_data>)))
  "Returns full string definition for message of type '<calterah_point_data>"
  (cl:format cl:nil "int64 frame_id~%int32 frame_size~%float32[150] P~%float32[150] range~%float32[150] vel~%float32[150] ang~%float32[150] ang_elv~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'calterah_point_data)))
  "Returns full string definition for message of type 'calterah_point_data"
  (cl:format cl:nil "int64 frame_id~%int32 frame_size~%float32[150] P~%float32[150] range~%float32[150] vel~%float32[150] ang~%float32[150] ang_elv~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <calterah_point_data>))
  (cl:+ 0
     8
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'P) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'range) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'vel) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'ang) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'ang_elv) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <calterah_point_data>))
  "Converts a ROS message object to a list"
  (cl:list 'calterah_point_data
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':frame_size (frame_size msg))
    (cl:cons ':P (P msg))
    (cl:cons ':range (range msg))
    (cl:cons ':vel (vel msg))
    (cl:cons ':ang (ang msg))
    (cl:cons ':ang_elv (ang_elv msg))
))
