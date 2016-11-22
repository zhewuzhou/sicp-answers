#lang racket/base

(module+ test
         (require rackunit "../../main/chaper2/2-7-16.rkt")
         (test-case "test add-interval"
                    (check-eq? (lower-bound (add-interval (make-interval 1 2)
                                                          (make-interval 2 100)))
                               3)
                    (check-eq? (lower-bound (add-interval (make-interval 2 1)
                                                          (make-interval 2 100)))
                               3)
                    (check-eq? (upper-bound (add-interval (make-interval 1 2)
                                                          (make-interval 2 100)))
                               102))
         (test-case "test mul-interval"
                    (check-eq? (lower-bound (mul-interval (make-interval 1 2)
                                                          (make-interval 2 100)))
                               2)
                    (check-eq? (lower-bound (mul-interval (make-interval 2 1)
                                                          (make-interval 2 100)))
                               2)
                    (check-eq? (upper-bound (mul-interval (make-interval 1 2)
                                                          (make-interval 2 100)))
                               200))
         (test-case "test mul-interval-nine"
           (check-eq? (lower-bound (mul-interval-nine (make-interval 1 2)
                                                 (make-interval 2 100)))
                      2)
           (check-eq? (lower-bound (mul-interval-nine (make-interval 2 1)
                                                 (make-interval 2 100)))
                      2)
           (check-eq? (upper-bound (mul-interval-nine (make-interval 1 2)
                                                 (make-interval 2 100)))
                      200)))

