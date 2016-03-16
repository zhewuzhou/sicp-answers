#lang racket/base

(define (even? n)
  (= (remainder n 2) 0))

(define (square n)
  (* n n))

(define (average x y)
  (/ (+ x y) 2))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(provide even?
         square
         average
         abs)
