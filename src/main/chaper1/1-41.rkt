#lang racket/base

(require "../utils/common.rkt")

(define (double f)
  (lambda(x)
    (f (f x))))

(define (16times)
  (((double (double double)) inc) 5))

(provide 16times)
