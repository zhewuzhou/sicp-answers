#lang racket/base

(require "../utils/common.rkt")
;;; This is the recursive process
(define (fast-expt b n)
  (cond((= n 0) 1)
       ((even? n) (square (fast-expt b (/ n 2))))
       (else (* b (fast-expt b (- n 1))))))

;;; This is the iterative process
;;; lessons and learn, calculate in mind first, don't rush to code
(define (expt-internal b n f)
  (cond ((= n 1) (* b f))
        ((even? n) (expt-internal (square b) (/ n 2) f))
        (else (expt-internal (square b) (/ (- n 1) 2) (* b f)))))

(define (fast-expt-iter b n)
  (expt-internal b n 1))

(provide fast-expt
         fast-expt-iter)
