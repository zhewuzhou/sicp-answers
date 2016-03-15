#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1.19.rkt")
  (test-case
      "fast-fib"
    (check-eq? (fast-fib 0) 0)
    (check-eq? (fast-fib 1) 1)
    (check-eq? (fast-fib 2) 1)
    (check-eq? (fast-fib 3) 2)
    (check-eq? (fast-fib 4) 3)
    (check-eq? (fast-fib 5) 5)
    (check-eq? (fast-fib 10) 55)))
