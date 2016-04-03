#lang racket/base

(module+ test
  (require rackunit
           "../../main/utils/common.rkt"
           "../../main/chaper1/1-40.rkt")
  (test-case
      "sqrt-new"
    (check-= (sqrt-new 4.0) 2 1e-5 "")
    (define (sqrt-newton x)
      (newtons-method (lambda(y)(- (square y) x))
                      1.0))
    (check-= (sqrt-newton 4.0) 2 1e-5 ""))
  (test-case
      "cube-root"
    (check-= ((lambda(x)(newtons-method (lambda(y) (- (* y y y y y) x))
                                        1.0)) 32.0)
             2.0 1e-5 ""))
  (test-case
      "cubic"
    (define (cubic a b c)
      (lambda(x)
        (+ (* x x x)
           (* a x x )
           (* b x)
           c)))
    (check-= (newtons-method (cubic 1 1 1) 1) -1 1e-5 "")
    (check-= (newtons-method (cubic 17 7 5) 1) -16.59637 1e-5 "")))
