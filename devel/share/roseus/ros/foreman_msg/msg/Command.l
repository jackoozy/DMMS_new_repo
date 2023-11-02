;; Auto-generated. Do not edit!


(when (boundp 'foreman_msg::Command)
  (if (not (find-package "FOREMAN_MSG"))
    (make-package "FOREMAN_MSG"))
  (shadow 'Command (find-package "FOREMAN_MSG")))
(unless (find-package "FOREMAN_MSG::COMMAND")
  (make-package "FOREMAN_MSG::COMMAND"))

(in-package "ROS")
;;//! \htmlinclude Command.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass foreman_msg::Command
  :super ros::object
  :slots (_preciseMode _eeOrientationMode _jointMode _targetJoint _x _y _z _incrementQ _decrementQ ))

(defmethod foreman_msg::Command
  (:init
   (&key
    ((:preciseMode __preciseMode) (instance std_msgs::Bool :init))
    ((:eeOrientationMode __eeOrientationMode) (instance std_msgs::Bool :init))
    ((:jointMode __jointMode) (instance std_msgs::Bool :init))
    ((:targetJoint __targetJoint) (instance std_msgs::Int8 :init))
    ((:x __x) (instance std_msgs::Float32 :init))
    ((:y __y) (instance std_msgs::Float32 :init))
    ((:z __z) (instance std_msgs::Float32 :init))
    ((:incrementQ __incrementQ) (instance std_msgs::Bool :init))
    ((:decrementQ __decrementQ) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _preciseMode __preciseMode)
   (setq _eeOrientationMode __eeOrientationMode)
   (setq _jointMode __jointMode)
   (setq _targetJoint __targetJoint)
   (setq _x __x)
   (setq _y __y)
   (setq _z __z)
   (setq _incrementQ __incrementQ)
   (setq _decrementQ __decrementQ)
   self)
  (:preciseMode
   (&rest __preciseMode)
   (if (keywordp (car __preciseMode))
       (send* _preciseMode __preciseMode)
     (progn
       (if __preciseMode (setq _preciseMode (car __preciseMode)))
       _preciseMode)))
  (:eeOrientationMode
   (&rest __eeOrientationMode)
   (if (keywordp (car __eeOrientationMode))
       (send* _eeOrientationMode __eeOrientationMode)
     (progn
       (if __eeOrientationMode (setq _eeOrientationMode (car __eeOrientationMode)))
       _eeOrientationMode)))
  (:jointMode
   (&rest __jointMode)
   (if (keywordp (car __jointMode))
       (send* _jointMode __jointMode)
     (progn
       (if __jointMode (setq _jointMode (car __jointMode)))
       _jointMode)))
  (:targetJoint
   (&rest __targetJoint)
   (if (keywordp (car __targetJoint))
       (send* _targetJoint __targetJoint)
     (progn
       (if __targetJoint (setq _targetJoint (car __targetJoint)))
       _targetJoint)))
  (:x
   (&rest __x)
   (if (keywordp (car __x))
       (send* _x __x)
     (progn
       (if __x (setq _x (car __x)))
       _x)))
  (:y
   (&rest __y)
   (if (keywordp (car __y))
       (send* _y __y)
     (progn
       (if __y (setq _y (car __y)))
       _y)))
  (:z
   (&rest __z)
   (if (keywordp (car __z))
       (send* _z __z)
     (progn
       (if __z (setq _z (car __z)))
       _z)))
  (:incrementQ
   (&rest __incrementQ)
   (if (keywordp (car __incrementQ))
       (send* _incrementQ __incrementQ)
     (progn
       (if __incrementQ (setq _incrementQ (car __incrementQ)))
       _incrementQ)))
  (:decrementQ
   (&rest __decrementQ)
   (if (keywordp (car __decrementQ))
       (send* _decrementQ __decrementQ)
     (progn
       (if __decrementQ (setq _decrementQ (car __decrementQ)))
       _decrementQ)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Bool _preciseMode
    (send _preciseMode :serialization-length)
    ;; std_msgs/Bool _eeOrientationMode
    (send _eeOrientationMode :serialization-length)
    ;; std_msgs/Bool _jointMode
    (send _jointMode :serialization-length)
    ;; std_msgs/Int8 _targetJoint
    (send _targetJoint :serialization-length)
    ;; std_msgs/Float32 _x
    (send _x :serialization-length)
    ;; std_msgs/Float32 _y
    (send _y :serialization-length)
    ;; std_msgs/Float32 _z
    (send _z :serialization-length)
    ;; std_msgs/Bool _incrementQ
    (send _incrementQ :serialization-length)
    ;; std_msgs/Bool _decrementQ
    (send _decrementQ :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Bool _preciseMode
       (send _preciseMode :serialize s)
     ;; std_msgs/Bool _eeOrientationMode
       (send _eeOrientationMode :serialize s)
     ;; std_msgs/Bool _jointMode
       (send _jointMode :serialize s)
     ;; std_msgs/Int8 _targetJoint
       (send _targetJoint :serialize s)
     ;; std_msgs/Float32 _x
       (send _x :serialize s)
     ;; std_msgs/Float32 _y
       (send _y :serialize s)
     ;; std_msgs/Float32 _z
       (send _z :serialize s)
     ;; std_msgs/Bool _incrementQ
       (send _incrementQ :serialize s)
     ;; std_msgs/Bool _decrementQ
       (send _decrementQ :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Bool _preciseMode
     (send _preciseMode :deserialize buf ptr-) (incf ptr- (send _preciseMode :serialization-length))
   ;; std_msgs/Bool _eeOrientationMode
     (send _eeOrientationMode :deserialize buf ptr-) (incf ptr- (send _eeOrientationMode :serialization-length))
   ;; std_msgs/Bool _jointMode
     (send _jointMode :deserialize buf ptr-) (incf ptr- (send _jointMode :serialization-length))
   ;; std_msgs/Int8 _targetJoint
     (send _targetJoint :deserialize buf ptr-) (incf ptr- (send _targetJoint :serialization-length))
   ;; std_msgs/Float32 _x
     (send _x :deserialize buf ptr-) (incf ptr- (send _x :serialization-length))
   ;; std_msgs/Float32 _y
     (send _y :deserialize buf ptr-) (incf ptr- (send _y :serialization-length))
   ;; std_msgs/Float32 _z
     (send _z :deserialize buf ptr-) (incf ptr- (send _z :serialization-length))
   ;; std_msgs/Bool _incrementQ
     (send _incrementQ :deserialize buf ptr-) (incf ptr- (send _incrementQ :serialization-length))
   ;; std_msgs/Bool _decrementQ
     (send _decrementQ :deserialize buf ptr-) (incf ptr- (send _decrementQ :serialization-length))
   ;;
   self)
  )

(setf (get foreman_msg::Command :md5sum-) "6ea48707806b8e8fa7ee906cce3e1a86")
(setf (get foreman_msg::Command :datatype-) "foreman_msg/Command")
(setf (get foreman_msg::Command :definition-)
      "std_msgs/Bool preciseMode
std_msgs/Bool eeOrientationMode 
std_msgs/Bool jointMode
std_msgs/Int8 targetJoint
std_msgs/Float32 x
std_msgs/Float32 y
std_msgs/Float32 z
std_msgs/Bool incrementQ
std_msgs/Bool decrementQ
================================================================================
MSG: std_msgs/Bool
bool data
================================================================================
MSG: std_msgs/Int8
int8 data

================================================================================
MSG: std_msgs/Float32
float32 data
")



(provide :foreman_msg/Command "6ea48707806b8e8fa7ee906cce3e1a86")


