#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1-17.rkt")
  (test-case
      "multi"
    (check-eq? (multi 10 11) 110 "")
    (check-eq? (multi 100 111) 11100 "")))
