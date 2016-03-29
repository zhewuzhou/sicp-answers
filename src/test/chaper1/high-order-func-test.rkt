#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/high-order-func.rkt")
  (test-case
      "sum-iter-cubes"
    (check-eq? (sum-cubes 1 10) 3025)))
