#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper2/rat.rkt"
           "../../main/chaper2/2-1.rkt")
  (test-case
      "case"
    (check-eq? (numer (make-rat-minus 1 -9)) -1 "")
    (check-eq? (denom (make-rat-minus 1 -9)) 9 "")))
