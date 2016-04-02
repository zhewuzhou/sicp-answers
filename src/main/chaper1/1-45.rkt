#lang racket/base

(require "./1-41.rkt"
         "./1-40.rkt"
         "./1-35.rkt")

(define (cube-root x)
  (fixed-point-of-transform (lambda (y) (- (square y) x))
                            newton-transform
                            1.0))

(provide cube-root)
