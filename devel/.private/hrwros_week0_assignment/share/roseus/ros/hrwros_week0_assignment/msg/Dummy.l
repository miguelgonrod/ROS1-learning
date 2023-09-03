;; Auto-generated. Do not edit!


(when (boundp 'hrwros_week0_assignment::Dummy)
  (if (not (find-package "HRWROS_WEEK0_ASSIGNMENT"))
    (make-package "HRWROS_WEEK0_ASSIGNMENT"))
  (shadow 'Dummy (find-package "HRWROS_WEEK0_ASSIGNMENT")))
(unless (find-package "HRWROS_WEEK0_ASSIGNMENT::DUMMY")
  (make-package "HRWROS_WEEK0_ASSIGNMENT::DUMMY"))

(in-package "ROS")
;;//! \htmlinclude Dummy.msg.html


(defclass hrwros_week0_assignment::Dummy
  :super ros::object
  :slots (_name ))

(defmethod hrwros_week0_assignment::Dummy
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get hrwros_week0_assignment::Dummy :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get hrwros_week0_assignment::Dummy :datatype-) "hrwros_week0_assignment/Dummy")
(setf (get hrwros_week0_assignment::Dummy :definition-)
      "string name

")



(provide :hrwros_week0_assignment/Dummy "c1f3d28f1b044c871e6eff2e9fc3c667")


