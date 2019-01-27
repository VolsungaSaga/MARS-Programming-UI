
(cl:in-package :asdf)

(defsystem "xbox_controller_driver-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ControllerState" :depends-on ("_package_ControllerState"))
    (:file "_package_ControllerState" :depends-on ("_package"))
    (:file "Tank" :depends-on ("_package_Tank"))
    (:file "_package_Tank" :depends-on ("_package"))
  ))