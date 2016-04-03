#lang racket/base

(require "../utils/common.rkt"
         "./1-40.rkt"
         "./1-41.rkt")

(define (cube-root x)
  (newtons-method (lambda(y)(- (* y y y) x))
                  1.0))

(provide cube-root)
