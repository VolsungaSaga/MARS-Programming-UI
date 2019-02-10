;; Auto-generated. Do not edit!


(when (boundp 'xbox_controller_driver::ControllerState)
  (if (not (find-package "XBOX_CONTROLLER_DRIVER"))
    (make-package "XBOX_CONTROLLER_DRIVER"))
  (shadow 'ControllerState (find-package "XBOX_CONTROLLER_DRIVER")))
(unless (find-package "XBOX_CONTROLLER_DRIVER::CONTROLLERSTATE")
  (make-package "XBOX_CONTROLLER_DRIVER::CONTROLLERSTATE"))

(in-package "ROS")
;;//! \htmlinclude ControllerState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass xbox_controller_driver::ControllerState
  :super ros::object
  :slots (_Header _leftY _rightY _A _B _X _Y _back _start _guide _leftBumper _rightBumper _leftTrigger _rightTrigger _normalizeRightY _normalizeLeftY ))

(defmethod xbox_controller_driver::ControllerState
  (:init
   (&key
    ((:Header __Header) (instance std_msgs::Header :init))
    ((:leftY __leftY) 0)
    ((:rightY __rightY) 0)
    ((:A __A) 0)
    ((:B __B) 0)
    ((:X __X) 0)
    ((:Y __Y) 0)
    ((:back __back) 0)
    ((:start __start) 0)
    ((:guide __guide) 0)
    ((:leftBumper __leftBumper) 0)
    ((:rightBumper __rightBumper) 0)
    ((:leftTrigger __leftTrigger) 0.0)
    ((:rightTrigger __rightTrigger) 0.0)
    ((:normalizeRightY __normalizeRightY) 0.0)
    ((:normalizeLeftY __normalizeLeftY) 0.0)
    )
   (send-super :init)
   (setq _Header __Header)
   (setq _leftY (round __leftY))
   (setq _rightY (round __rightY))
   (setq _A (round __A))
   (setq _B (round __B))
   (setq _X (round __X))
   (setq _Y (round __Y))
   (setq _back (round __back))
   (setq _start (round __start))
   (setq _guide (round __guide))
   (setq _leftBumper (round __leftBumper))
   (setq _rightBumper (round __rightBumper))
   (setq _leftTrigger (float __leftTrigger))
   (setq _rightTrigger (float __rightTrigger))
   (setq _normalizeRightY (float __normalizeRightY))
   (setq _normalizeLeftY (float __normalizeLeftY))
   self)
  (:Header
   (&rest __Header)
   (if (keywordp (car __Header))
       (send* _Header __Header)
     (progn
       (if __Header (setq _Header (car __Header)))
       _Header)))
  (:leftY
   (&optional __leftY)
   (if __leftY (setq _leftY __leftY)) _leftY)
  (:rightY
   (&optional __rightY)
   (if __rightY (setq _rightY __rightY)) _rightY)
  (:A
   (&optional __A)
   (if __A (setq _A __A)) _A)
  (:B
   (&optional __B)
   (if __B (setq _B __B)) _B)
  (:X
   (&optional __X)
   (if __X (setq _X __X)) _X)
  (:Y
   (&optional __Y)
   (if __Y (setq _Y __Y)) _Y)
  (:back
   (&optional __back)
   (if __back (setq _back __back)) _back)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:guide
   (&optional __guide)
   (if __guide (setq _guide __guide)) _guide)
  (:leftBumper
   (&optional __leftBumper)
   (if __leftBumper (setq _leftBumper __leftBumper)) _leftBumper)
  (:rightBumper
   (&optional __rightBumper)
   (if __rightBumper (setq _rightBumper __rightBumper)) _rightBumper)
  (:leftTrigger
   (&optional __leftTrigger)
   (if __leftTrigger (setq _leftTrigger __leftTrigger)) _leftTrigger)
  (:rightTrigger
   (&optional __rightTrigger)
   (if __rightTrigger (setq _rightTrigger __rightTrigger)) _rightTrigger)
  (:normalizeRightY
   (&optional __normalizeRightY)
   (if __normalizeRightY (setq _normalizeRightY __normalizeRightY)) _normalizeRightY)
  (:normalizeLeftY
   (&optional __normalizeLeftY)
   (if __normalizeLeftY (setq _normalizeLeftY __normalizeLeftY)) _normalizeLeftY)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _Header
    (send _Header :serialization-length)
    ;; int16 _leftY
    2
    ;; int16 _rightY
    2
    ;; int16 _A
    2
    ;; int16 _B
    2
    ;; int16 _X
    2
    ;; int16 _Y
    2
    ;; int16 _back
    2
    ;; int16 _start
    2
    ;; int16 _guide
    2
    ;; int16 _leftBumper
    2
    ;; int16 _rightBumper
    2
    ;; float32 _leftTrigger
    4
    ;; float32 _rightTrigger
    4
    ;; float32 _normalizeRightY
    4
    ;; float32 _normalizeLeftY
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _Header
       (send _Header :serialize s)
     ;; int16 _leftY
       (write-word _leftY s)
     ;; int16 _rightY
       (write-word _rightY s)
     ;; int16 _A
       (write-word _A s)
     ;; int16 _B
       (write-word _B s)
     ;; int16 _X
       (write-word _X s)
     ;; int16 _Y
       (write-word _Y s)
     ;; int16 _back
       (write-word _back s)
     ;; int16 _start
       (write-word _start s)
     ;; int16 _guide
       (write-word _guide s)
     ;; int16 _leftBumper
       (write-word _leftBumper s)
     ;; int16 _rightBumper
       (write-word _rightBumper s)
     ;; float32 _leftTrigger
       (sys::poke _leftTrigger (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rightTrigger
       (sys::poke _rightTrigger (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _normalizeRightY
       (sys::poke _normalizeRightY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _normalizeLeftY
       (sys::poke _normalizeLeftY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _Header
     (send _Header :deserialize buf ptr-) (incf ptr- (send _Header :serialization-length))
   ;; int16 _leftY
     (setq _leftY (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _rightY
     (setq _rightY (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _A
     (setq _A (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _B
     (setq _B (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _X
     (setq _X (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _Y
     (setq _Y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _back
     (setq _back (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _start
     (setq _start (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _guide
     (setq _guide (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _leftBumper
     (setq _leftBumper (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _rightBumper
     (setq _rightBumper (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _leftTrigger
     (setq _leftTrigger (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rightTrigger
     (setq _rightTrigger (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _normalizeRightY
     (setq _normalizeRightY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _normalizeLeftY
     (setq _normalizeLeftY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get xbox_controller_driver::ControllerState :md5sum-) "4c31c26381776898087933af6bf1ba7e")
(setf (get xbox_controller_driver::ControllerState :datatype-) "xbox_controller_driver/ControllerState")
(setf (get xbox_controller_driver::ControllerState :definition-)
      "Header Header

int16 leftY
int16 rightY

int16 A
int16 B
int16 X
int16 Y 
int16 back
int16 start
int16 guide
int16 leftBumper
int16 rightBumper


float32 leftTrigger
float32 rightTrigger

float32 normalizeRightY
float32 normalizeLeftY

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :xbox_controller_driver/ControllerState "4c31c26381776898087933af6bf1ba7e")


