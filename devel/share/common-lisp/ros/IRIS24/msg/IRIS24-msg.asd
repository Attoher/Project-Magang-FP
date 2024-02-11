
(cl:in-package :asdf)

(defsystem "IRIS24-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "BS2PC" :depends-on ("_package_BS2PC"))
    (:file "_package_BS2PC" :depends-on ("_package"))
    (:file "PC2BS" :depends-on ("_package_PC2BS"))
    (:file "_package_PC2BS" :depends-on ("_package"))
    (:file "TT" :depends-on ("_package_TT"))
    (:file "_package_TT" :depends-on ("_package"))
  ))