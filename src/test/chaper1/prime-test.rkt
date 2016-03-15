#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/prime.rkt")
  (test-case
      "prime?"
    (check-true (prime? 7))))
