#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1-35.rkt")
  (test-case
      "fixed-point"
    (check-= (fixed-point cos 1.0) 0.73908229 1e-5)
    (check-= (fixed-point
              (lambda (x)
                (+ 1 (/ 1.0 x)))
              1.0) 1.61803278 1e-5)))
