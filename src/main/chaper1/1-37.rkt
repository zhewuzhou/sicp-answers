#lang racket/base

(define (cont-frac n d k)
  (define (f x)
    (if (= x k)
        (+ (d (- x 1)) (/ (n x) (d x)))
        (+ (d (- x 1)) (/ (n x) (f (+ x 1))))))
  (f 1))

(provide cont-frac)
