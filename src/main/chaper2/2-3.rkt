#lang racket/base

(require "./2-2.rkt")

(define (make-rectangle start end)
  (cons start end))

(define (rect-width r)
  (abs (- (x-point (car r))
          (x-point (cdr r)))))

(define (rect-height r)
  (abs (- (y-point (car r))
          (y-point (cdr r)))))

(define (rect-perimeter r)
  (* 2
     (+ (rect-width r)
        (rect-height r))))

(define (rect-area r)
  (* (rect-width r)
     (rect-height r)))

(provide make-rectangle rect-perimeter rect-area)



