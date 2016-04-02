#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1-39.rkt")
  (test-case
      "tan"
    (check-= (lambert-iter 1.0 10) (tan 1) 1e-5 "")
    (check-= (lambert 1.0 10) (tan 1) 1e-5 "")))
