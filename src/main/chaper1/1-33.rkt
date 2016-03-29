#lang racket/base

(require "./prime.rkt")

(define (filtered-acc combiner filter null-value f a next b)
  (define (iter n result)
    (cond ((> n b) result)
          ((filter n) (iter (next n) (combiner (f n) result)))
          (else (iter (next n) result))))
  (iter a null-value))

(define (sum-prime a b)
  (define (add x y)
    (+ x y))
  (define (inc x)
    (+ x 1))
  (define (self x)
    x)
  (filtered-acc add prime? 0 self a inc b))

(provide sum-prime)
