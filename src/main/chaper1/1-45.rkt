#lang racket/base

(require "../utils/common.rkt"
         "./1-40.rkt"
         "./1-41.rkt")

(define (cube-root x)
  (fixed-point-of-transform (lambda (y) (/ x (square y)))
                            newton-transform
                            average-damp
                            1.0))

(provide cube-root)
