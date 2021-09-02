; Auto-generated. Do not edit!


(cl:in-package serial_port-msg)


;//! \htmlinclude serial_data.msg.html

(cl:defclass <serial_data> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass serial_data (<serial_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <serial_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'serial_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name serial_port-msg:<serial_data> is deprecated: use serial_port-msg:serial_data instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <serial_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:data-val is deprecated.  Use serial_port-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <serial_data>) ostream)
  "Serializes a message object of type '<serial_data>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <serial_data>) istream)
  "Deserializes a message object of type '<serial_data>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<serial_data>)))
  "Returns string type for a message object of type '<serial_data>"
  "serial_port/serial_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'serial_data)))
  "Returns string type for a message object of type 'serial_data"
  "serial_port/serial_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<serial_data>)))
  "Returns md5sum for a message object of type '<serial_data>"
  "1bf77f25acecdedba0e224b162199717")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'serial_data)))
  "Returns md5sum for a message object of type 'serial_data"
  "1bf77f25acecdedba0e224b162199717")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<serial_data>)))
  "Returns full string definition for message of type '<serial_data>"
  (cl:format cl:nil "char data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'serial_data)))
  "Returns full string definition for message of type 'serial_data"
  (cl:format cl:nil "char data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <serial_data>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <serial_data>))
  "Converts a ROS message object to a list"
  (cl:list 'serial_data
    (cl:cons ':data (data msg))
))
