#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1-3.rkt")
    (check-equal? (sum-three 1 2 3) 5 "should be 5 given sum-three with 1 2 3"))
