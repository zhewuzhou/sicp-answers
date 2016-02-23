;;; 1-7.scm
(load-relative "newton-method.scm")

(define (precise-guess? guess pre-guess)
  (< (/ (abs (- guess pre-guess)) pre-guess) (/ 0.0001 guess)))

(define (precise-sqrt-iter guess x)
  (if(precise-guess? guess (improve guess x))
     (exact->inexact guess)
     (precise-sqrt-iter (improve guess x) x)))
