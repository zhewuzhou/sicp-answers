#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/newton-method.rkt"
           "../../main/chaper1/1-7.rkt")
  (check-true (< (abs (- (square (precise-sqrt-iter 1 0.04)) 0.04)) (* 0.0001 0.04)) "Small number")
  (check-true (< (abs (- (square (precise-sqrt-iter 1 2)) 2)) (* 0.0001 2)) "Normal number")
  (check-true (< (abs (- (square (precise-sqrt-iter 1 9000000)) 9000000)) (* 0.0001 9000000)) "Large number"))