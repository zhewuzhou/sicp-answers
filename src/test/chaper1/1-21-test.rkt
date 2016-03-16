#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/prime.rkt")
  (test-case
      "smallest-divisor"
    (check-eq? (smallest-divisor 199) 199)
    (check-eq? (smallest-divisor 1999) 1999)
    (check-eq? (smallest-divisor 19999) 7)))
