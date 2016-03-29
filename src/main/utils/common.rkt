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

(define (sum-iter term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum-iter term (next a) next b))))

(provide even?
         square
         average
         sum-iter
         abs)
