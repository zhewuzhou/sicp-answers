#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1-40.rkt")
  (test-case
      "sqrt-new"
    (check-= (sqrt-new 4.0) 2 1e-5 "")
  (test-case
      "cubic"
    (define (cubic a b c)
      (lambda(x)
        (+ (* x x x)
           (* a x x )
           (* b x)
           c)))
    (check-= (newtons-method (cubic 1 1 1) 1) -1 1e-5 "")
    (check-= (newtons-method (cubic 17 7 5) 1) -16.59637 1e-5 ""))))
