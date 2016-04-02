#lang racket/base

(define (square n)
  (* n n))

(define (average x y)
  (/ (+ x y) 2))

(define (sum-range f a next b)
  (if (> a b)
      0
      (+ (f a)
         (sum-range f (next a) next b))))

(define (sum-iter f a next b)
  (define (iter n result)
    (if (> n b)
        result
        (iter (next n) (+ (f n) result))))
  (iter a 0))

(define (cube n)
  (* n n n))

(define (inc n)
  (+ n 1))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum-range f (+ a (/ dx 2.0)) add-dx b)
     dx))

(provide square
         average
         inc
         sum-range
         sum-iter
         integral
         cube)
