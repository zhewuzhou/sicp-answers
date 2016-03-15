#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1-16.rkt")
  (test-case
      "fast-expt"
    (check-eq? 32 (fast-expt 2 5) "")))
