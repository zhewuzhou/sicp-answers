#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1-37.rkt")
;;; at latest when k 10 the 4 digits precise
  (test-case
      "cont-frac"
    (check-=
     (cont-frac (lambda (i) 1.0)
                (lambda (i) 1.0)
                10)
     1.618 1e-4 "")))
