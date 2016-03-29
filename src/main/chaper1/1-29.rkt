#lang racket/base

(require "../utils/common.rkt")

(define (simpson f a b n)
  (define h
    (/ (+ a b) n))
  (define (y k)
    (f (+ a (* h k))))
  (define (term k)
    (* (cond ((or (= k 0) (= k n)) 1)
             ((even? k) 2)
             (else 4))
       (y k)))
  (/ (* h (sum-range term 0 inc n)) 3.0))

(provide simpson)
