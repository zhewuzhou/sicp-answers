#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1-11.rkt")
  (test-case
      "basic case for recursive process"
    (check-eq? (f 0) 0 "")
    (check-eq? (f 1) 1 "")
    (check-eq? (f 2) 2 ""))

  (test-case
      "n bigger than 3 test for recursive process"
    (check-eq? (f 3) 4 "")
    (check-eq? (f 4) 11 "")
    (check-eq? (f 5) 25 "")
    (check-eq? (f 6) 59 ""))

  (test-case
      "basic case for iterative process"
    (check-eq? (g 0) 0 "")
    (check-eq? (g 1) 1 "")
    (check-eq? (g 2) 2 ""))

  (test-case
      "n bigger than 3 test for iterative process"
    (check-eq? (g 3) 4 "")
    (check-eq? (g 4) 11 "")
    (check-eq? (g 5) 25 "")
    (check-eq? (g 6) 59 "")))
