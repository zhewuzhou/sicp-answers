#lang racket/base

(require "../utils/common.rkt")

(define (square-root-modulo-m-1-p n m)
  (if (and (not (or (= n 1) (= n (- m 1))))
           (= (remainder (* n n) m) 1))
      0
      (remainder (* n n) m)))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (square-root-modulo-m-1-p (expmod base (/ exp 2) m) m))
        (else
         (remainder (* base (expmod base (- exp 1) m)) m))))

(define (random-prime-test n)
  (define (try-it a)
    (= (expmod a (- n 1) n) 1))
  (try-it (+ 2 (random (- n 2)))))

(define (miller-rabin-test? n times)
  (cond ((= times 0) #t)
        ((random-prime-test n) (miller-rabin-test? n (- times 1)))
        (else #f)))

(provide miller-rabin-test?)
