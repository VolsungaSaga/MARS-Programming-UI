; Auto-generated. Do not edit!


(cl:in-package xbox_controller_driver-msg)


;//! \htmlinclude ControllerState.msg.html

(cl:defclass <ControllerState> (roslisp-msg-protocol:ros-message)
  ((Header
    :reader Header
    :initarg :Header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (leftY
    :reader leftY
    :initarg :leftY
    :type cl:fixnum
    :initform 0)
   (rightY
    :reader rightY
    :initarg :rightY
    :type cl:fixnum
    :initform 0)
   (A
    :reader A
    :initarg :A
    :type cl:fixnum
    :initform 0)
   (B
    :reader B
    :initarg :B
    :type cl:fixnum
    :initform 0)
   (X
    :reader X
    :initarg :X
    :type cl:fixnum
    :initform 0)
   (Y
    :reader Y
    :initarg :Y
    :type cl:fixnum
    :initform 0)
   (back
    :reader back
    :initarg :back
    :type cl:fixnum
    :initform 0)
   (start
    :reader start
    :initarg :start
    :type cl:fixnum
    :initform 0)
   (guide
    :reader guide
    :initarg :guide
    :type cl:fixnum
    :initform 0)
   (leftTrigger
    :reader leftTrigger
    :initarg :leftTrigger
    :type cl:float
    :initform 0.0)
   (rightTrigger
    :reader rightTrigger
    :initarg :rightTrigger
    :type cl:float
    :initform 0.0))
)

(cl:defclass ControllerState (<ControllerState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControllerState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControllerState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xbox_controller_driver-msg:<ControllerState> is deprecated: use xbox_controller_driver-msg:ControllerState instead.")))

(cl:ensure-generic-function 'Header-val :lambda-list '(m))
(cl:defmethod Header-val ((m <ControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbox_controller_driver-msg:Header-val is deprecated.  Use xbox_controller_driver-msg:Header instead.")
  (Header m))

(cl:ensure-generic-function 'leftY-val :lambda-list '(m))
(cl:defmethod leftY-val ((m <ControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbox_controller_driver-msg:leftY-val is deprecated.  Use xbox_controller_driver-msg:leftY instead.")
  (leftY m))

(cl:ensure-generic-function 'rightY-val :lambda-list '(m))
(cl:defmethod rightY-val ((m <ControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbox_controller_driver-msg:rightY-val is deprecated.  Use xbox_controller_driver-msg:rightY instead.")
  (rightY m))

(cl:ensure-generic-function 'A-val :lambda-list '(m))
(cl:defmethod A-val ((m <ControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbox_controller_driver-msg:A-val is deprecated.  Use xbox_controller_driver-msg:A instead.")
  (A m))

(cl:ensure-generic-function 'B-val :lambda-list '(m))
(cl:defmethod B-val ((m <ControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbox_controller_driver-msg:B-val is deprecated.  Use xbox_controller_driver-msg:B instead.")
  (B m))

(cl:ensure-generic-function 'X-val :lambda-list '(m))
(cl:defmethod X-val ((m <ControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbox_controller_driver-msg:X-val is deprecated.  Use xbox_controller_driver-msg:X instead.")
  (X m))

(cl:ensure-generic-function 'Y-val :lambda-list '(m))
(cl:defmethod Y-val ((m <ControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbox_controller_driver-msg:Y-val is deprecated.  Use xbox_controller_driver-msg:Y instead.")
  (Y m))

(cl:ensure-generic-function 'back-val :lambda-list '(m))
(cl:defmethod back-val ((m <ControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbox_controller_driver-msg:back-val is deprecated.  Use xbox_controller_driver-msg:back instead.")
  (back m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <ControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbox_controller_driver-msg:start-val is deprecated.  Use xbox_controller_driver-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'guide-val :lambda-list '(m))
(cl:defmethod guide-val ((m <ControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbox_controller_driver-msg:guide-val is deprecated.  Use xbox_controller_driver-msg:guide instead.")
  (guide m))

(cl:ensure-generic-function 'leftTrigger-val :lambda-list '(m))
(cl:defmethod leftTrigger-val ((m <ControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbox_controller_driver-msg:leftTrigger-val is deprecated.  Use xbox_controller_driver-msg:leftTrigger instead.")
  (leftTrigger m))

(cl:ensure-generic-function 'rightTrigger-val :lambda-list '(m))
(cl:defmethod rightTrigger-val ((m <ControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbox_controller_driver-msg:rightTrigger-val is deprecated.  Use xbox_controller_driver-msg:rightTrigger instead.")
  (rightTrigger m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControllerState>) ostream)
  "Serializes a message object of type '<ControllerState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'leftY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rightY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'A)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'B)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'X)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'back)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'start)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'guide)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'leftTrigger))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rightTrigger))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControllerState>) istream)
  "Deserializes a message object of type '<ControllerState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'leftY) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rightY) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'A) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'B) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'X) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'back) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'guide) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftTrigger) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightTrigger) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControllerState>)))
  "Returns string type for a message object of type '<ControllerState>"
  "xbox_controller_driver/ControllerState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControllerState)))
  "Returns string type for a message object of type 'ControllerState"
  "xbox_controller_driver/ControllerState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControllerState>)))
  "Returns md5sum for a message object of type '<ControllerState>"
  "241623f4c570eac23d9ad3ea0b37b80a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControllerState)))
  "Returns md5sum for a message object of type 'ControllerState"
  "241623f4c570eac23d9ad3ea0b37b80a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControllerState>)))
  "Returns full string definition for message of type '<ControllerState>"
  (cl:format cl:nil "Header Header~%~%int16 leftY~%int16 rightY~%~%int16 A~%int16 B~%int16 X~%int16 Y ~%int16 back~%int16 start~%int16 guide~%~%float32 leftTrigger~%float32 rightTrigger~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControllerState)))
  "Returns full string definition for message of type 'ControllerState"
  (cl:format cl:nil "Header Header~%~%int16 leftY~%int16 rightY~%~%int16 A~%int16 B~%int16 X~%int16 Y ~%int16 back~%int16 start~%int16 guide~%~%float32 leftTrigger~%float32 rightTrigger~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControllerState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Header))
     2
     2
     2
     2
     2
     2
     2
     2
     2
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControllerState>))
  "Converts a ROS message object to a list"
  (cl:list 'ControllerState
    (cl:cons ':Header (Header msg))
    (cl:cons ':leftY (leftY msg))
    (cl:cons ':rightY (rightY msg))
    (cl:cons ':A (A msg))
    (cl:cons ':B (B msg))
    (cl:cons ':X (X msg))
    (cl:cons ':Y (Y msg))
    (cl:cons ':back (back msg))
    (cl:cons ':start (start msg))
    (cl:cons ':guide (guide msg))
    (cl:cons ':leftTrigger (leftTrigger msg))
    (cl:cons ':rightTrigger (rightTrigger msg))
))
