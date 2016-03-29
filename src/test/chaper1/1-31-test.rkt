#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1-31.rkt")
  (test-case
      "cal-pi"
    (check-= (cal-pi 500) 3.144735 1e-5)))
