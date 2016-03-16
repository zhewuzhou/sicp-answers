#lang racket/base

(require "prime.rkt")

(define (report-prime elapsed-time)
  (displayln "***")
  (displayln elapsed-time))

(define (start-prime-test n start-time)
  (cond ((prime? n) (report-prime (- (current-inexact-milliseconds) start-time)))))

(define (timed-prime-test n)
  (displayln n)
  (start-prime-test n (current-inexact-milliseconds)))

(define (search-for-primes start end)
  (if (even? start)
      (search-for-primes (+ start 1) end)
      (cond ((< start end)
             (timed-prime-test start)
             (search-for-primes (+ start 2) end)))))

(provide search-for-primes)
