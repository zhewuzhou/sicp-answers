#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper2/rat.rkt")
  (test-case
      "case"
    (check-eq? (denom (add-rat (make-rat 2 8) (make-rat 1 4))) 2 "")))
