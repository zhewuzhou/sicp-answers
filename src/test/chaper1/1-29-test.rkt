#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1-29.rkt"
           "../../main/utils/common.rkt")
  (test-case
      "simpson"
    (check-= (simpson cube 0 1 100.0) 0.2499999999 1e-10)
    (check-= (simpson cube 0 1 1000.0) 0.25 1e-10)))
