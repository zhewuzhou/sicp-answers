#lang racket/base

(module+ test
  (require rackunit
           "../../main/chaper1/1-12.rkt")
  (test-case
      "pascal triangle first 2 lines"
    (check-equal? (pascal-triangle 1) '(1) "")
    (check-equal? (pascal-triangle 2) '(1 1) "")))
