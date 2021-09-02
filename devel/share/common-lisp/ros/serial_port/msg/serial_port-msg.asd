
(cl:in-package :asdf)

(defsystem "serial_port-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TI_vital_data" :depends-on ("_package_TI_vital_data"))
    (:file "_package_TI_vital_data" :depends-on ("_package"))
    (:file "calterah_point_data" :depends-on ("_package_calterah_point_data"))
    (:file "_package_calterah_point_data" :depends-on ("_package"))
    (:file "serial_data" :depends-on ("_package_serial_data"))
    (:file "_package_serial_data" :depends-on ("_package"))
  ))