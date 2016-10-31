#lang racket/base

(module+ test
         (require rackunit "../../main/chaper2/2-2.rkt")
         (test-case "middle segment"
                    (define a
                      (make-point 1 1))
                    (define b
                      (make-point 3 3))
                    (define s
                      (make-segment a b))
                    (check-eq? (x-point (midpoint-segment s))
                               2)
                    (check-eq? (y-point (midpoint-segment s))
                               2)))
