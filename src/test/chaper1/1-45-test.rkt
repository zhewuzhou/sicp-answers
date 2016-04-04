#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1-45.rkt"
           "../../main/chaper1/1-40.rkt")
  (test-case
      "nth-root-newtons"
    (check-= (nth-root-newtons 10000 4) 10 1e-5 "")
    (check-= (nth-root-newtons 4294967296 32) 2.0 1e-5 ""))
  (test-case
      "nth-root-damp"
    (check-= (nth-root-damp 10000 4) 10 1e-5 "")
    (check-= (nth-root-damp 4294967296 32) 2.0 1e-5 "")))

