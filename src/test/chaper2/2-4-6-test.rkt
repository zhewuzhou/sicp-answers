#lang racket/base

(module+ test
         (require rackunit "../../main/chaper2/2-4-6.rkt")
         (test-case "test cons car cdr"
                    (check-eq? (car (cons 2 1))
                               2)
                    (check-eq? (cdr (cons 2 1))
                               1))
         (test-case "test cons car cdr with expt"
                    (define large-number 2519424)
                    (check-eq? (car-expt large-number)
                               7)
                    (check-eq? (cdr-expt large-number)
                               9))
         (test-case "test Church number"
                    (define (inc n)
                      (+ 1 n))
                    (check-eq? ((zero inc) 2)
                               2)
                    (check-eq? (((plus one two) inc) 2)
                               5)))
