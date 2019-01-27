;; Auto-generated. Do not edit!


(when (boundp 'xbox_controller_driver::Tank)
  (if (not (find-package "XBOX_CONTROLLER_DRIVER"))
    (make-package "XBOX_CONTROLLER_DRIVER"))
  (shadow 'Tank (find-package "XBOX_CONTROLLER_DRIVER")))
(unless (find-package "XBOX_CONTROLLER_DRIVER::TANK")
  (make-package "XBOX_CONTROLLER_DRIVER::TANK"))

(in-package "ROS")
;;//! \htmlinclude Tank.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass xbox_controller_driver::Tank
  :super ros::object
  :slots (_header _powerLevel _angle ))

(defmethod xbox_controller_driver::Tank
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:powerLevel __powerLevel) 0.0)
    ((:angle __angle) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _powerLevel (float __powerLevel))
   (setq _angle __angle)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:powerLevel
   (&optional __powerLevel)
   (if __powerLevel (setq _powerLevel __powerLevel)) _powerLevel)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _powerLevel
    4
    ;; float32[] _angle
    (* 4    (length _angle)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _powerLevel
       (sys::poke _powerLevel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _angle
     (write-long (length _angle) s)
     (dotimes (i (length _angle))
       (sys::poke (elt _angle i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _powerLevel
     (setq _powerLevel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _angle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angle (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angle i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get xbox_controller_driver::Tank :md5sum-) "25378ec4b0c7747c4f27c83ea164ea7e")
(setf (get xbox_controller_driver::Tank :datatype-) "xbox_controller_driver/Tank")
(setf (get xbox_controller_driver::Tank :definition-)
      "
Header header

float32 powerLevel
float32[] angle
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



(provide :xbox_controller_driver/Tank "25378ec4b0c7747c4f27c83ea164ea7e")


