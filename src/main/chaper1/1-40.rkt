#lang racket/base

(require "./1-35.rkt"
         "../utils/common.rkt")

(define dx 0.00001)

(define (deriv g)
  (lambda(x)
    (/ (- (g (+ x dx)) (g x))
       dx)))

(define (newton-transform g)
  (lambda(x)
    (- x (/ (g x)
            ((deriv g) x)))))

(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))

(define (average-damp f)
  (lambda(x)
    (average x (f x))))

(define (fixed-point-of-transform g transform damp guess)
  (fixed-point-damp (transform g) damp guess))

(define (sqrt-new x)
  (fixed-point-of-transform (lambda (y) (- (square y) x))
                            newton-transform
                            average-damp
                            1.0))

(provide newtons-method
         sqrt-new)
