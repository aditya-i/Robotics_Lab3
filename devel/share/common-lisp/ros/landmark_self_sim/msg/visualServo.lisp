; Auto-generated. Do not edit!


(cl:in-package landmark_self_sim-msg)


;//! \htmlinclude visualServo.msg.html

(cl:defclass <visualServo> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass visualServo (<visualServo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <visualServo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'visualServo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_self_sim-msg:<visualServo> is deprecated: use landmark_self_sim-msg:visualServo instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <visualServo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_self_sim-msg:distance-val is deprecated.  Use landmark_self_sim-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <visualServo>) ostream)
  "Serializes a message object of type '<visualServo>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <visualServo>) istream)
  "Deserializes a message object of type '<visualServo>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<visualServo>)))
  "Returns string type for a message object of type '<visualServo>"
  "landmark_self_sim/visualServo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'visualServo)))
  "Returns string type for a message object of type 'visualServo"
  "landmark_self_sim/visualServo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<visualServo>)))
  "Returns md5sum for a message object of type '<visualServo>"
  "acff7fda0c683c872875f5c4b069f124")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'visualServo)))
  "Returns md5sum for a message object of type 'visualServo"
  "acff7fda0c683c872875f5c4b069f124")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<visualServo>)))
  "Returns full string definition for message of type '<visualServo>"
  (cl:format cl:nil "~%~%float64 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'visualServo)))
  "Returns full string definition for message of type 'visualServo"
  (cl:format cl:nil "~%~%float64 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <visualServo>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <visualServo>))
  "Converts a ROS message object to a list"
  (cl:list 'visualServo
    (cl:cons ':distance (distance msg))
))
