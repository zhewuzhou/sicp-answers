#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1-16.rkt")
  (test-case
      "fast-expt"
    (check-eq? 32 (fast-expt 2 5) ""))
  (test-case
      "fast-expt-iter"
    (check-eq? (fast-expt-iter 2 1) 2 "")
    (check-eq? (fast-expt-iter 2 2) 4 "")
    (check-eq? (fast-expt-iter 2 3) 8 "")
    (check-eq? (fast-expt-iter 2 4) 16 "")
    (check-eq? (fast-expt-iter 2 5) 32 "")
    (check-eq? (fast-expt-iter 2 7) 128 "")))
