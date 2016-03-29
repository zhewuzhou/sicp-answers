#lang racket/base

(require "./prime.rkt"
         "./1-20.rkt")

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

(define (sum-prime-with-n n)
  (define (mul x y)
    (* x y))
  (define (inc x)
    (+ x 1))
  (define (self x)
    x)
  (define (prime-with-n? x)
    (= (gcd-iter n x) 1))
  (filtered-acc mul prime-with-n? 1 self 2 inc n))

(provide sum-prime
         sum-prime-with-n)
