
(cl:in-package :asdf)

(defsystem "hrwros_week0_assignment-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Dummy" :depends-on ("_package_Dummy"))
    (:file "_package_Dummy" :depends-on ("_package"))
  ))