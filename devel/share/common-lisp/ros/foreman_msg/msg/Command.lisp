; Auto-generated. Do not edit!


(cl:in-package foreman_msg-msg)


;//! \htmlinclude Command.msg.html

(cl:defclass <Command> (roslisp-msg-protocol:ros-message)
  ((preciseMode
    :reader preciseMode
    :initarg :preciseMode
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (eeOrientationMode
    :reader eeOrientationMode
    :initarg :eeOrientationMode
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (jointMode
    :reader jointMode
    :initarg :jointMode
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (targetJoint
    :reader targetJoint
    :initarg :targetJoint
    :type std_msgs-msg:Int8
    :initform (cl:make-instance 'std_msgs-msg:Int8))
   (x
    :reader x
    :initarg :x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (y
    :reader y
    :initarg :y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (z
    :reader z
    :initarg :z
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (incrementQ
    :reader incrementQ
    :initarg :incrementQ
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (decrementQ
    :reader decrementQ
    :initarg :decrementQ
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass Command (<Command>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Command>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Command)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name foreman_msg-msg:<Command> is deprecated: use foreman_msg-msg:Command instead.")))

(cl:ensure-generic-function 'preciseMode-val :lambda-list '(m))
(cl:defmethod preciseMode-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foreman_msg-msg:preciseMode-val is deprecated.  Use foreman_msg-msg:preciseMode instead.")
  (preciseMode m))

(cl:ensure-generic-function 'eeOrientationMode-val :lambda-list '(m))
(cl:defmethod eeOrientationMode-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foreman_msg-msg:eeOrientationMode-val is deprecated.  Use foreman_msg-msg:eeOrientationMode instead.")
  (eeOrientationMode m))

(cl:ensure-generic-function 'jointMode-val :lambda-list '(m))
(cl:defmethod jointMode-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foreman_msg-msg:jointMode-val is deprecated.  Use foreman_msg-msg:jointMode instead.")
  (jointMode m))

(cl:ensure-generic-function 'targetJoint-val :lambda-list '(m))
(cl:defmethod targetJoint-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foreman_msg-msg:targetJoint-val is deprecated.  Use foreman_msg-msg:targetJoint instead.")
  (targetJoint m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foreman_msg-msg:x-val is deprecated.  Use foreman_msg-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foreman_msg-msg:y-val is deprecated.  Use foreman_msg-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foreman_msg-msg:z-val is deprecated.  Use foreman_msg-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'incrementQ-val :lambda-list '(m))
(cl:defmethod incrementQ-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foreman_msg-msg:incrementQ-val is deprecated.  Use foreman_msg-msg:incrementQ instead.")
  (incrementQ m))

(cl:ensure-generic-function 'decrementQ-val :lambda-list '(m))
(cl:defmethod decrementQ-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foreman_msg-msg:decrementQ-val is deprecated.  Use foreman_msg-msg:decrementQ instead.")
  (decrementQ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Command>) ostream)
  "Serializes a message object of type '<Command>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'preciseMode) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'eeOrientationMode) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'jointMode) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'targetJoint) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'z) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'incrementQ) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'decrementQ) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Command>) istream)
  "Deserializes a message object of type '<Command>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'preciseMode) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'eeOrientationMode) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'jointMode) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'targetJoint) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'z) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'incrementQ) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'decrementQ) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Command>)))
  "Returns string type for a message object of type '<Command>"
  "foreman_msg/Command")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Command)))
  "Returns string type for a message object of type 'Command"
  "foreman_msg/Command")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Command>)))
  "Returns md5sum for a message object of type '<Command>"
  "6ea48707806b8e8fa7ee906cce3e1a86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Command)))
  "Returns md5sum for a message object of type 'Command"
  "6ea48707806b8e8fa7ee906cce3e1a86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Command>)))
  "Returns full string definition for message of type '<Command>"
  (cl:format cl:nil "std_msgs/Bool preciseMode~%std_msgs/Bool eeOrientationMode ~%std_msgs/Bool jointMode~%std_msgs/Int8 targetJoint~%std_msgs/Float32 x~%std_msgs/Float32 y~%std_msgs/Float32 z~%std_msgs/Bool incrementQ~%std_msgs/Bool decrementQ~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: std_msgs/Int8~%int8 data~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Command)))
  "Returns full string definition for message of type 'Command"
  (cl:format cl:nil "std_msgs/Bool preciseMode~%std_msgs/Bool eeOrientationMode ~%std_msgs/Bool jointMode~%std_msgs/Int8 targetJoint~%std_msgs/Float32 x~%std_msgs/Float32 y~%std_msgs/Float32 z~%std_msgs/Bool incrementQ~%std_msgs/Bool decrementQ~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: std_msgs/Int8~%int8 data~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Command>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'preciseMode))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'eeOrientationMode))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'jointMode))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'targetJoint))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'z))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'incrementQ))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'decrementQ))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Command>))
  "Converts a ROS message object to a list"
  (cl:list 'Command
    (cl:cons ':preciseMode (preciseMode msg))
    (cl:cons ':eeOrientationMode (eeOrientationMode msg))
    (cl:cons ':jointMode (jointMode msg))
    (cl:cons ':targetJoint (targetJoint msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':incrementQ (incrementQ msg))
    (cl:cons ':decrementQ (decrementQ msg))
))
