#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1-25.rkt")
  (test-case
      "expmod"
    (check-eq? (expmod 5 101 101) 5))

  (test-case
      "expmod-slow"
    (check-eq? (expmod-slow 5 101 101) 5)))
