#lang racket/base

(require "../utils/common.rkt")

(define (inc n)
  (+ n 1))

(define (cubes n)
  (* n n n))

(define (sum-cubes a b)
  (sum-iter cubes a inc b))

(provide sum-cubes)
