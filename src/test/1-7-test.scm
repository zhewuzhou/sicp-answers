(load "../../test-manager/load.scm")
(load "../main/chaper1/1-7.scm")

(in-test-group very-big-or-very-small
               (define-test (test-very-small)
                 (define result 0)
                 (set! result (precise-sqrt-iter 1 0.04))
                 (check (< (abs (- (square result) 0.04)) (* 0.0001 0.04))
                        "should be good enough given 0.001 given very small number"))

               (define-test (test-normal)
                 (define result 0)
                 (set! result (precise-sqrt-iter 1 2))
                 (check (< (abs (- (square result) 2)) (* 0.0001 2))
                        "should be good enough given 0.001 given normal number"))

               (define-test (test-big-number)
                 (define result 0)
                 (set! result (precise-sqrt-iter 1 9000000))
                 (check (< (abs (- (square result) 9000000)) (* 9000000 0.0001))
                        "should be good enough given 0.001 given big number")))

(run-test '(very-big-or-very-small))
