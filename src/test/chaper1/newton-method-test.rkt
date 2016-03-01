#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/newton-method.rkt")
  (check-true (< (abs (- (square (sqrt-iter 1 2)) 2)) 0.001) "should be good when apply 1 2"))
