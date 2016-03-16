#lang racket/base

;;; for 1-23 when we apply the improvement for small number it's 1.3 for large it's close 1.85
;;; 1.3 can be explained that measure impact is large when your program run in short term
;;; 1.85 instead of 2 could be explained you now add check if 2 for every single number plus add operation
;;; In summary you never got exactly what you want when you coding, side effect everywhere
(module+ test
  (require rackunit
           "../../main/chaper1/1-22.rkt")
  (test-case
      "search for primes"
    (search-for-primes 100000 100030)
    (displayln "------7 digits------")
    (search-for-primes 1000000 1000030)))
