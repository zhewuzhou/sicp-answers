#lang racket/base

(define (pascal-triangle n)
  (cond ((= n 1) '(1))
        ((= n 2) '(1 1))))

(provide pascal-triangle)
