#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper2/2-3.rkt"
           "../../main/chaper2/2-2.rkt")
         (test-case "rectangle area and perimeter"
                    (define start
                      (make-point 1 1))
                    (define end
                      (make-point 3 3))
                    (define rect
                      (make-rectangle start end))
                    (check-eq? (rect-perimeter rect)
                               8)
                    (check-eq? (rect-area rect)
                               4)))
