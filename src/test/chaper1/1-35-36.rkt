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
              1.0) 1.61803278 1e-5)
    (check-= (fixed-point
              (lambda (x)
                (/ (log 1000) (log x)))
              2.0) 4.5555322 1e-5)
    (check-= (fixed-point-damp
              (lambda (x)
                (/ (log 1000) (log x)))
              (lambda (x y)
                (/ (+ x y) 2))
              2.0) 4.5555322 1e-5)))
