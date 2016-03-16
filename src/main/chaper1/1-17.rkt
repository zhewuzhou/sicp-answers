#lang racket/base

(require "../utils/common.rkt")

(define (multi-internal a b f)
  (cond ((= a 1) (+ b f))
        ((even? a) (multi-internal (/ a 2) (+ b b) f))
        (else (multi-internal (- a 1) b (+ f b)))))

(define (multi a b)
  (multi-internal a b 0))

(provide multi)
