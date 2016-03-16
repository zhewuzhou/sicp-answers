#lang racket/base

(require "../utils/common.rkt")

(define (fast-fib-iter a b p q count)
  (cond ((= count 0) b)
        ((even? count) (fast-fib-iter a
                                  b
                                  (+ (* p p) (* q q))
                                  (+ (* 2 p q) (* q q))
                                  (/ count 2)))
        (else (fast-fib-iter (+ (* b q) (* a q) (* a p))
                             (+ (* b p) (* a q))
                             p
                             q
                             (- count 1)))))

(define (fast-fib n)
  (fast-fib-iter 1 0 0 1 n))

(provide fast-fib)
