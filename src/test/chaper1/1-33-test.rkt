#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1-33.rkt")
  (test-case
      "sum-prime"
    (check-eq? (sum-prime 1 10) 18))
  (test-case
      "sum-prime-with-n"
    (check-eq? (sum-prime-with-n 10) 189)))
