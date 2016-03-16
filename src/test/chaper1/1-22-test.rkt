#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1-22.rkt")
  (test-case
      "search for primes"
    (search-for-primes 100000 102000)
    (search-for-primes 1000000 1000200)))
