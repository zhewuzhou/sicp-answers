#lang racket/base

(require "../chaper1/1-16.rkt")

(define (cons x y)
  (λ (m)
     (m x y)))

(define (car z)
  (z (λ (p q)
        p)))

(define (cdr z)
  (z (λ (p q)
        q)))

(define (cons-expt a b)
  (* (fast-expt 2 a)
     (fast-expt 3 b)))

(define (expt-internal n b s)
  (cond
   ((= (modulo n b) 0)
    (expt-internal (/ n b)
                   b
                   (+ s 1)))
   (else s)))

(define (car-expt n)
  (expt-internal n 2 0))

(define (cdr-expt n)
  (expt-internal n 3 0))

(define zero
  (λ (f)
     (λ (x)
        x)))

(define (add-1 n)
  (λ (f)
     (λ (x)
        (f ((n f) x)))))

(define one
  (λ (f)
     (λ (x)
        (f x))))

(define two
  (λ (f)
     (λ (x)
        (f (f x)))))

(define (plus lhs rhs)
  (λ (f)
     (λ (x)
        ((lhs f)
         ((rhs f) x)))))

(provide cons car cdr cons-expt car-expt cdr-expt
         zero add-1 plus one two)

;;; the prove
;;; https://zh.wikipedia.org/wiki/%E7%AE%97%E6%9C%AF%E5%9F%BA%E6%9C%AC%E5%AE%9A%E7%90%86

