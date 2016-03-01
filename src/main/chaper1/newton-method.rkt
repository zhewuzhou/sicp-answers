;;; newton-method.scm
(define (average x y)
  (/ (+ x y) 2))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (square x)
  (* x x))

(define (improve guess x)
  (average guess (/ x guess)))


(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

;;;1.6 what's wrong with flowing program, never return a value back
;;;Lisp uses applicative-order evaluation, partly because of the additional efficiency obtained from avoiding multiple evaluations of expressions such as those illustrated with (+ 5 1) and (* 5 2) above and, more significantly, because normal-order evaluation becomes much more complicated to deal with when we leave the realm of procedures that can be modeled by substitution.
;;;new-if is a procedure, not a special-form, which means that all sub-expressions are evaluated before new-if is applied to the values of the operands. That includes sqrt-iter which is extended to new-if which again leads to the evaluation of all the sub-expressions including sqrt-iter etc. Instead, in if only one of the consequent expressions is evaluated each time.

(define (new-if predication then-clause else-clause)
  (cond (predication (then-clause))
        (else (else-clause))))

(define (sqrt-iter-new guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter-new (improve guess x)
                         x)))
