;; Auto-generated. Do not edit!


(when (boundp 'serial_port::calterah_point_data)
  (if (not (find-package "SERIAL_PORT"))
    (make-package "SERIAL_PORT"))
  (shadow 'calterah_point_data (find-package "SERIAL_PORT")))
(unless (find-package "SERIAL_PORT::CALTERAH_POINT_DATA")
  (make-package "SERIAL_PORT::CALTERAH_POINT_DATA"))

(in-package "ROS")
;;//! \htmlinclude calterah_point_data.msg.html


(defclass serial_port::calterah_point_data
  :super ros::object
  :slots (_frame_id _frame_size _P _range _vel _ang _ang_elv ))

(defmethod serial_port::calterah_point_data
  (:init
   (&key
    ((:frame_id __frame_id) 0)
    ((:frame_size __frame_size) 0)
    ((:P __P) (make-array 150 :initial-element 0.0 :element-type :float))
    ((:range __range) (make-array 150 :initial-element 0.0 :element-type :float))
    ((:vel __vel) (make-array 150 :initial-element 0.0 :element-type :float))
    ((:ang __ang) (make-array 150 :initial-element 0.0 :element-type :float))
    ((:ang_elv __ang_elv) (make-array 150 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _frame_id (round __frame_id))
   (setq _frame_size (round __frame_size))
   (setq _P __P)
   (setq _range __range)
   (setq _vel __vel)
   (setq _ang __ang)
   (setq _ang_elv __ang_elv)
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:frame_size
   (&optional __frame_size)
   (if __frame_size (setq _frame_size __frame_size)) _frame_size)
  (:P
   (&optional __P)
   (if __P (setq _P __P)) _P)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:ang
   (&optional __ang)
   (if __ang (setq _ang __ang)) _ang)
  (:ang_elv
   (&optional __ang_elv)
   (if __ang_elv (setq _ang_elv __ang_elv)) _ang_elv)
  (:serialization-length
   ()
   (+
    ;; int64 _frame_id
    8
    ;; int32 _frame_size
    4
    ;; float32[150] _P
    (* 4    150)
    ;; float32[150] _range
    (* 4    150)
    ;; float32[150] _vel
    (* 4    150)
    ;; float32[150] _ang
    (* 4    150)
    ;; float32[150] _ang_elv
    (* 4    150)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _frame_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _frame_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _frame_id) (= (length (_frame_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_frame_id . bv) 0) 0) s)
              (write-long (ash (elt (_frame_id . bv) 1) -1) s))
             ((and (class _frame_id) (= (length (_frame_id . bv)) 1)) ;; big1
              (write-long (elt (_frame_id . bv) 0) s)
              (write-long (if (>= _frame_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _frame_id s)(write-long (if (>= _frame_id 0) 0 #xffffffff) s)))
     ;; int32 _frame_size
       (write-long _frame_size s)
     ;; float32[150] _P
     (dotimes (i 150)
       (sys::poke (elt _P i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[150] _range
     (dotimes (i 150)
       (sys::poke (elt _range i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[150] _vel
     (dotimes (i 150)
       (sys::poke (elt _vel i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[150] _ang
     (dotimes (i 150)
       (sys::poke (elt _ang i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[150] _ang_elv
     (dotimes (i 150)
       (sys::poke (elt _ang_elv i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _frame_id
#+(or :alpha :irix6 :x86_64)
      (setf _frame_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _frame_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int32 _frame_size
     (setq _frame_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[150] _P
   (dotimes (i (length _P))
     (setf (elt _P i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[150] _range
   (dotimes (i (length _range))
     (setf (elt _range i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[150] _vel
   (dotimes (i (length _vel))
     (setf (elt _vel i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[150] _ang
   (dotimes (i (length _ang))
     (setf (elt _ang i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[150] _ang_elv
   (dotimes (i (length _ang_elv))
     (setf (elt _ang_elv i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get serial_port::calterah_point_data :md5sum-) "6f9b38ae16785d52e5632721cd27c921")
(setf (get serial_port::calterah_point_data :datatype-) "serial_port/calterah_point_data")
(setf (get serial_port::calterah_point_data :definition-)
      "int64 frame_id
int32 frame_size
float32[150] P
float32[150] range
float32[150] vel
float32[150] ang
float32[150] ang_elv
")



(provide :serial_port/calterah_point_data "6f9b38ae16785d52e5632721cd27c921")


