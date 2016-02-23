(load "../../test-manager/load.scm")
(load "../main/chaper1/newton-method.scm")

(define-test (sqrt-iter-2-with-guess-1)
  (define result 0)
  (set! result (sqrt-iter 1 2))
  (check (< (abs (- (square result) 2)) 0.001) "should be good enough given 0.001"))

(run-test '(sqrt-iter-2-with-guess-1))
