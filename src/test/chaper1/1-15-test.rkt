#lang racket/base

;;; the time complexity is log3(n)+3
;;; TODO: could finish all practices introduce algorithm

(module+ test
  (require rackunit
           "../../main/chaper1/1-15.rkt")
  (test-case
      "sine"
    (check-= (sine 43046721.0) -0.984648 1e-5 "")))
