#lang racket/base

(define (cont-frac n d k)
  (define (f x)
    (if (= x k)
        (/ (n x) (d x))
        (/ (n x) (+ (d x) (f (+ x 1))))))
  (f 1))

(define (cont-frac-iter n d k)
  (define (f-iter x result)
    (if (= x 0)
        result
        (f-iter (- x 1) (/ (n x) (+ ( d x) result)))))
  (f-iter (- k 1) (/ (n k) (d k))))

(provide cont-frac
         cont-frac-iter)
