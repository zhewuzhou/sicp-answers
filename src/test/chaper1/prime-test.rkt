#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/prime.rkt")
  (test-case
      "prime?"
    (check-true (prime? 7))
    (check-true (prime? 1019)))

  (test-case
      "fast-prime?"
    (check-true (fast-prime? 131071 100))))
