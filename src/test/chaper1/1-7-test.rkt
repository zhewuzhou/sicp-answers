#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/newton-method.rkt"
           "../../main/chaper1/1-7.rkt")
  (check-= (square (precise-sqrt-iter 1 0.04)) 0.04 0.0001 "Small number")
  (check-= (square (precise-sqrt-iter 1 2)) 2 0.0001 "Normal number")
  (check-= (square (precise-sqrt-iter 1 90000)) 90000 0.000001 "Large number"))
