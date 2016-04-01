#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1-37.rkt")
;;; at latest when k 10 the 4 digits precise
  (test-case
      "cont-frac"
    (check-=
     (cont-frac (lambda (i) 1.0)
                (lambda (i) 1.0)
                10)
     0.618 1e-4 "")

    (check-=
     (cont-frac-iter (lambda (i) 1.0)
                (lambda (i) 1.0)
                10)
     0.618 1e-4 "")

    (check-=
     (+ (cont-frac-iter (lambda (i) 1.0)
                     (lambda (i)
                       (if (= (remainder (- i 2) 3) 0)
                           (* (/ (+ i 1) 3) 2)
                           1.0
                           ))
                     10) 2)
     2.7182871 1e-4 "")))
