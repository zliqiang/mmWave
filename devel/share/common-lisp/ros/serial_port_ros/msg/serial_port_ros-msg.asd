
(cl:in-package :asdf)

(defsystem "serial_port_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "serial_data" :depends-on ("_package_serial_data"))
    (:file "_package_serial_data" :depends-on ("_package"))
  ))