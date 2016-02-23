(load "../../test-manager/load.scm")
(load "../main/chaper1/newton-method.scm")

(define-test (test-sqrt-iter)
  (define result 0)
  (set! result (sqrt-iter 1 2))
  (check (< (abs (- (square result) 2)) 0.001) "should be good enough given 0.001"))

(define-test (test-sqrt-iter-new)
  (define result 0)
  (set! result (sqrt-iter-new 1 2))
  (check (< (abs (- (square result) 2)) 0.001) "should be good with new-if"))

(run-test '(test-sqrt-iter))
;;;(run-test '(test-sqrt-iter-new))
