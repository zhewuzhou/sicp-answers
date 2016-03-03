#lang racket/base

(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))

(define (g n)
  (cond ((< n 3) n)
        (else (iter-g 0 1 2 n))))

(define (iter-g a b c count)
  (if (= count 2)
      c
      (iter-g b c (+ c
                     (* 2 b)
                     (* 3 a)) (- count 1))))

(provide f
         g)
