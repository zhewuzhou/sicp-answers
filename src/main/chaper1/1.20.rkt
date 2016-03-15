#lang racket/base

;;; with normal order that expand unless can not expand there will be 18 remainder calls
;;; with application order there will be only 4 remainder calls
(define (gcd-iter a b)
  (if (= 0 b)
      a
      (gcd-iter b (remainder a b))))

(provide gcd-iter)
