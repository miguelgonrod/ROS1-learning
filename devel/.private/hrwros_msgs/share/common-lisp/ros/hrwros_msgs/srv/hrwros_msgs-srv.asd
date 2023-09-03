
(cl:in-package :asdf)

(defsystem "hrwros_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ConvertMeterToFeet" :depends-on ("_package_ConvertMeterToFeet"))
    (:file "_package_ConvertMeterToFeet" :depends-on ("_package"))
  ))