#lang racket/base

(require "../utils/common.rkt")
(define dx 0.00001)

(define (double f)
  (lambda(x)
    (f (f x))))

(define (16times)
  (((double (double double)) (lambda (x) (+ x 1))) 5))

(define (repeated f n)
  (define (compose-fns g h)
    (lambda(x)
      (g (h x))))
  (define (repeat-iter g count)
    (if (= count n)
        g
        (repeat-iter (compose-fns g f)
                     (+ count 1))))
  (lambda(x)
    ((repeat-iter f 1) x)))

(define (smooth f)
  (lambda (x)
    (average (average (f (- x dx) (f x)))
             (f (+ x dx)))))

; should be (repeated (smooth f) n)

(provide 16times
         repeated
         smooth)
