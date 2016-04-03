#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1-45.rkt"
           "../../main/chaper1/1-40.rkt")
  (test-case
      "cube-root"
    (check-= (cube-root 8.0) 2.0 1e-5 "")))
