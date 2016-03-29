#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1-33.rkt")
  (test-case
      "sum-prime"
    (check-eq? (sum-prime 1 10) 18)))
