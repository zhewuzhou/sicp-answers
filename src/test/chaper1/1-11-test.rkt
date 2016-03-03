#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1-11.rkt")
  (test-case
      "basic case"
    (check-eq? (f 0) 0 "")
    (check-eq? (f 1) 1 "")
    (check-eq? (f 2) 2 ""))
  (test-case
      "n bigger than 3"
    (check-eq? (f 3) 4 "")
    (check-eq? (f 4) 11 "")
    (check-eq? (f 5) 25 "")))
