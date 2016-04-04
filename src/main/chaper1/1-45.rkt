#lang racket/base

(require "../utils/common.rkt"
         "./1-40.rkt"
         "./1-41.rkt"
         "./1-35.rkt")

(define (nth-root-newtons x n)
  (newtons-method (lambda(y)(- (expt y n) x))
                  1.0))

(define (nth-root-damp x n)
  (fixed-point
   ((repeated average-damp
              (floor (/ (log n) (log 2))))
    (lambda(y)(/ x (expt y (- n 1)))))
   1.0))

(provide nth-root-newtons
         nth-root-damp)
