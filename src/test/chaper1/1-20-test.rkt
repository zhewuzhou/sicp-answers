#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1-20.rkt")
  (test-case
      "gcd"
    (check-eq? (gcd-iter 206 40) 2)))
