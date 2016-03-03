#lang racket/base

(module+ test
  (require rackunit
           "../main/recursion.rkt")
  (test-case
      "test iteratable fib"
    (check-eq? (fib 4) 3 "fib 4 should be 3")
    (check-eq? (fib 5) 5 "fib 5 should be 5")
    (check-eq? (fib 6) 8 "fib 6 should be 8")
    (check-eq? (fib 7) 13 "fib 7 should be 13"))
  (test-case
      "test iteratable cc"
    (check-eq? (count-change 5) 2 "5 should have 2 count change")
    (check-eq? (count-change 10) 4 "10 should have 4 count change means")
    (check-eq? (count-change 50) 50 "50 should have 4 count change means")
    (check-eq? (count-change 200) 2435 "200 should have 2435 count change means")))
