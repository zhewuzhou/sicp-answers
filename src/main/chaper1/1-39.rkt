#lang racket/base

(require "./1-37.rkt")

(define (lambert-iter x k)
  (define (n i)
    (if(= i 1)
       x
       (- (* x x))))
  (define (d i)
    (- (* 2 i) 1))
  (cont-frac-iter n d k))

;;; again it's missing of bracket!!!!!
(define (lambert x k)
  (define (df i)
    (- (* i 2) 1))
  (define (nf i)
    (if (= i 1)
        x
        (* x x)))
  (define (tan-iter i result)
    (if(= i 0)
       result
       (tan-iter (- i 1)
                 (/ (nf i)
                    (- (df i) result)))))
(tan-iter (- k 1)
            (/ (nf k)
               (df k))))

(provide lambert-iter
         lambert)
