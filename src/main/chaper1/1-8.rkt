#lang racket/base

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (good-enough? pre-guess guess)
  (< (/ (abs (- guess pre-guess)) guess) 0.0001))

(define (cube-root guess x)
  (if(good-enough? guess (improve guess x))
     (exact->inexact guess)
     (cube-root (improve guess x) x)))

(provide cube-root)
