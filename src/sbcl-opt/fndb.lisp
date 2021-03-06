;;;; -*- mode: lisp; indent-tabs-mode: nil -*-
#+sbcl
(in-package :sb-c)

#+sbcl (progn

(defknown (ironclad::fill-block-ub8-le ironclad::fill-block-ub8-be)
  ((simple-array (unsigned-byte 32) (*))
   (simple-array (unsigned-byte 8) (*))
   (integer 0 #.(- array-dimension-limit 64))) (values))

#+x86-64
(defknown ironclad::fill-block-ub8-le/64
  ((simple-array (unsigned-byte 64) (*))
   (simple-array (unsigned-byte 8) (*))
   (integer 0 #.(- array-dimension-limit 64))) (values))

#+x86-64
(defknown ironclad::fill-block-ub8-be/64
  ((simple-array (unsigned-byte 64) (*))
   (simple-array (unsigned-byte 8) (*))
   (integer 0 #.(- array-dimension-limit 128))) (values))

(defknown ironclad::expand-block
  ((simple-array (unsigned-byte 32) (*)))
  (values))

(defknown ironclad::%update-sha1-block
  ((simple-array (unsigned-byte 32) (*)) (simple-array (unsigned-byte 32) (*)))
  (simple-array (unsigned-byte 32) (*)))

(defknown ironclad::sha256-expand-block
  ((simple-array (unsigned-byte 32) (*)))
  (values))

);#+sbcl
