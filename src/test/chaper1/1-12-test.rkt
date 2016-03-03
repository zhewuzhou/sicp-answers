#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1-12.rkt")
  (test-case
      "pascal triangle first 2 lines"
    (check-equal? (pascal-triangle 1 1) 1 "")
    (check-equal? (pascal-triangle 2 1) 1 "")
    (check-equal? (pascal-triangle 2 2) 1 ""))

  (test-case
      "pascal triangle complex case"
    (check-eq? (pascal-triangle 3 2) 2 "")
    (check-eq? (pascal-triangle 4 2) 3 "")
    (check-eq? (pascal-triangle 4 3) 3 "")
    (check-eq? (pascal-triangle 5 3) 6 "")))
