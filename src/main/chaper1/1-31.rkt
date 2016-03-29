#lang racket/base

(require "../../main/utils/common.rkt")

(define (product f next a b)
  (define (iter n result)
    (if (> n b)
        result
        (iter (next n) (* (f n) result))))
  (iter a 1))

(define (accumulate combiner null-value f a next b)
  (define (iter n result)
    (if (> n b)
        result
        (iter (next n) (combiner (f n) result))))
  (iter a null-value))

(define (mul a b)
  (* a b))

(define (product-acc f next a b)
  (accumulate mul 1 f a next b))

;;; not a procedure means (n)
(define (cal-pi n)
  (define (inc-2 x)
    (+ x 2))
  (define (term x)
    (cond ((or (= x 2) (= x n)) x)
          (else (* x x))))
  (* (/ (product-acc term inc-2 2 n)
        (product-acc term inc-2 3 (- n 1)))
      4.0))

(provide cal-pi)
