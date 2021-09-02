;; Auto-generated. Do not edit!


(when (boundp 'serial_port_ros::serial_data)
  (if (not (find-package "SERIAL_PORT_ROS"))
    (make-package "SERIAL_PORT_ROS"))
  (shadow 'serial_data (find-package "SERIAL_PORT_ROS")))
(unless (find-package "SERIAL_PORT_ROS::SERIAL_DATA")
  (make-package "SERIAL_PORT_ROS::SERIAL_DATA"))

(in-package "ROS")
;;//! \htmlinclude serial_data.msg.html


(defclass serial_port_ros::serial_data
  :super ros::object
  :slots (_data ))

(defmethod serial_port_ros::serial_data
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; char _data
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; char _data
       (write-byte _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; char _data
     (setq _data (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get serial_port_ros::serial_data :md5sum-) "1bf77f25acecdedba0e224b162199717")
(setf (get serial_port_ros::serial_data :datatype-) "serial_port_ros/serial_data")
(setf (get serial_port_ros::serial_data :definition-)
      "char data
")



(provide :serial_port_ros/serial_data "1bf77f25acecdedba0e224b162199717")


