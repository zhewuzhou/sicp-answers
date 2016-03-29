#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1-28.rkt"
           "../../main/chaper1/prime.rkt")

  (test-case
      "prime test can not tell lie"
    (check-true (miller-rabin-test? 17 1))
    (check-true (miller-rabin-test? 131 1))
    (check-true (fast-prime? 561 1))
    (check-false (miller-rabin-test? 561 1))
    (check-true (fast-prime? 1387 1))
    (check-false (miller-rabin-test? 1387 1))
    (check-true (fast-prime? 1105 1))
    (check-false (miller-rabin-test? 1105 1))))
