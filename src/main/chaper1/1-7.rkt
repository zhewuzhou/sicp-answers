;;; 1-7.rkt
#lang racket/base

(require "newton-method.rkt")

(define (precise-guess? guess pre-guess)
  (< (/ (abs (- guess pre-guess)) pre-guess) (/ 0.0001 (square guess))))

(define (precise-sqrt-iter guess x)
  (if(precise-guess? guess (improve guess x))
     (exact->inexact guess)
     (precise-sqrt-iter (improve guess x) x)))


(provide precise-sqrt-iter)
