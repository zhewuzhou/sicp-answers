#lang racket/base

(require "../utils/common.rkt")

(define (inc n)
  (+ n 1))

(define (cubes n)
  (* n n n))

(define (sum-cubes a b)
  (sum-iter cubes a inc b))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum-iter f (+ a (/ dx 2.0)) add-dx b)
     dx))

(provide sum-cubes
         integral
         cubes)
