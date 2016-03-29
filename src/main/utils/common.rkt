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

(define (cube n)
  (* n n n))

(define (inc n)
  (+ n 1))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum-iter f (+ a (/ dx 2.0)) add-dx b)
     dx))

(provide even?
         square
         inc
         average
         sum-iter
         integral
         cube
         abs)
