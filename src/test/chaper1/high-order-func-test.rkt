#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/high-order-func.rkt")
  (test-case
      "sum-iter-cubes"
    (check-eq? (sum-cubes 1 10) 3025))
  (test-case
      "integral"
    (check-= (integral cubes 0 1 0.01) 0.2499875 1e-8)
    (check-= (integral cubes 0 1 0.001) 0.249999875 1e-10)))
