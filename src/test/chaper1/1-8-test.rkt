#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1-8.rkt")
  (check-= (cube-root 1 8) 2 0.0001 "Normal")
  (check-= (cube-root 1 2.7e-08) 0.003 0.0001 "Very small")
  (check-= (cube-root 1 125) 5 0.0001 "Very large"))

