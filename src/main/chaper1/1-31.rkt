#lang racket/base

(require "../../main/utils/common.rkt")

(define (product f next a b)
  (define (iter n result)
    (if (> n b)
        result
        (iter (next n) (* (f n) result))))
  (iter a 1))

;;; not a procedure means (n)
(define (cal-pi n)
  (define (inc-2 x)
    (+ x 2))
  (define (term x)
    (cond ((or (= x 2) (= x n)) x)
          (else (* x x))))
  (* (/ (product term inc-2 2 n)
        (product term inc-2 3 (- n 1)))
      4.0))

(provide cal-pi)
