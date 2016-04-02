#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1-41.rkt")
  (test-case
      "16times"
    (check-eq? (16times) 21 ""))
  (test-case
      "repeated"
    (define (square x)
      (* x x))
    (check-eq? ((repeated square 2) 5) 625 "")
    (check-eq? ((repeated square 5) 2) 4294967296 "")))

;;; The reason why it's 16 times not 8
;;; (double double)
;(define (4times f)
;  (lambda(x)
;    (f (f (f (f x))))))
; then (double (double double)) can be (double 4times) and that's (4times (4times)) and it's 16
