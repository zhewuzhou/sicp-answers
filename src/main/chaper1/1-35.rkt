#lang racket/base

(require "../utils/common.rkt")

(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (displayln "this is normal fixed point")
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (displayln guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(define (fixed-point-damp f first-guess)
  (displayln "this is damp fixed point")
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (displayln guess)
    (let ((next (average (f guess) guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(provide fixed-point
         fixed-point-damp)