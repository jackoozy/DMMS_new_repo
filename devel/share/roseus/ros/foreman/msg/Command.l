;; Auto-generated. Do not edit!


(when (boundp 'foreman::Command)
  (if (not (find-package "FOREMAN"))
    (make-package "FOREMAN"))
  (shadow 'Command (find-package "FOREMAN")))
(unless (find-package "FOREMAN::COMMAND")
  (make-package "FOREMAN::COMMAND"))

(in-package "ROS")
;;//! \htmlinclude Command.msg.html


(defclass foreman::Command
  :super ros::object
  :slots (_preciseMode _eeOrientationMode _jointMode _targetJoint _x _y _z ))

(defmethod foreman::Command
  (:init
   (&key
    ((:preciseMode __preciseMode) nil)
    ((:eeOrientationMode __eeOrientationMode) nil)
    ((:jointMode __jointMode) nil)
    ((:targetJoint __targetJoint) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _preciseMode __preciseMode)
   (setq _eeOrientationMode __eeOrientationMode)
   (setq _jointMode __jointMode)
   (setq _targetJoint (round __targetJoint))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:preciseMode
   (&optional (__preciseMode :null))
   (if (not (eq __preciseMode :null)) (setq _preciseMode __preciseMode)) _preciseMode)
  (:eeOrientationMode
   (&optional (__eeOrientationMode :null))
   (if (not (eq __eeOrientationMode :null)) (setq _eeOrientationMode __eeOrientationMode)) _eeOrientationMode)
  (:jointMode
   (&optional (__jointMode :null))
   (if (not (eq __jointMode :null)) (setq _jointMode __jointMode)) _jointMode)
  (:targetJoint
   (&optional __targetJoint)
   (if __targetJoint (setq _targetJoint __targetJoint)) _targetJoint)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; bool _preciseMode
    1
    ;; bool _eeOrientationMode
    1
    ;; bool _jointMode
    1
    ;; uint32 _targetJoint
    4
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _preciseMode
       (if _preciseMode (write-byte -1 s) (write-byte 0 s))
     ;; bool _eeOrientationMode
       (if _eeOrientationMode (write-byte -1 s) (write-byte 0 s))
     ;; bool _jointMode
       (if _jointMode (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _targetJoint
       (write-long _targetJoint s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _preciseMode
     (setq _preciseMode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _eeOrientationMode
     (setq _eeOrientationMode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _jointMode
     (setq _jointMode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _targetJoint
     (setq _targetJoint (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get foreman::Command :md5sum-) "e981757b6982377442dcf4f0b1a85562")
(setf (get foreman::Command :datatype-) "foreman/Command")
(setf (get foreman::Command :definition-)
      "bool preciseMode
bool eeOrientationMode 
bool jointMode
uint32 targetJoint
float32 x
float32 y
float32 z
")



(provide :foreman/Command "e981757b6982377442dcf4f0b1a85562")


