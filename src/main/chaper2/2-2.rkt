#lang racket/base

(define (make-point x y)
  (cons x y))

(define (x-point p)
  (car p))

(define (y-point p)
  (cdr p))

(define (make-segment a b)
  (cons a b))

(define (start-segment s)
  (car s))

(define (end-segment s)
  (cdr s))

(define (midpoint-segment s)
  (make-point (/ (+ (x-point (start-segment s))
                    (x-point (end-segment s)))
                 2)
              (/ (+ (y-point (start-segment s))
                    (y-point (end-segment s)))
                 2)))

(define (print-point p)
  (display "x point")
  (displayln (x-point p))
  (display "y point")
  (displayln (y-point p)))

(provide midpoint-segment
         x-point
         y-point
         make-point
         make-segment
         print-point)
