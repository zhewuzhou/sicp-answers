#lang racket/base

(require "../utils/common.rkt")

(define (divides? a b)
  (= (remainder b a) 0))

(define (find-divisor n test-divisor)
  (cond ((> (* test-divisor test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (smallest-divisor n)
  (find-divisor n 2))

;;; the complexity of this is O(sqrt n), if n is very large then it's gone be a big issue
(define (prime? n)
  (= n (smallest-divisor n)))

;;; probability algorithm
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m)) m))
        (else (remainder (* base (expmod base (- exp 1) m)) m))))

(define (fast-prime-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) #t)
        ((fast-prime-test n) (fast-prime? n (- times 1)))
        (else #f)))

(provide prime?
         fast-prime?)
