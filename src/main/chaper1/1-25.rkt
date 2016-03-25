#lang racket/base

(define (square n)
  (display "square")
  (displayln n)
  (* n n))

(define (fast-expt b n)
  (cond((= n 0) 1)
       ((even? n) (square (fast-expt b (/ n 2))))
       (else (* b (fast-expt b (- n 1))))))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m)) m))
        (else (remainder (* base (expmod base (- exp 1) m)) m))))

(define (expmod-slow base exp m)
  (remainder (fast-expt base exp) m))

;;; There are not much big difference between 2 versions of expmod
;;; With function call you have to evaluate the big integer
;;; Without fast-expt method the reminder will keep the value smaller than m, then it's quicker

(provide expmod
         expmod-slow)
