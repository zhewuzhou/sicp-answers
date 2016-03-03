#lang racket/base

(define (pascal-triangle row col)
  (cond ((< row col) #f)
        ((or (= 1 col) (= row col)) 1)
        (else (+ (pascal-triangle (- row 1) col)
                 (pascal-triangle (- row 1) (- col 1))))))

(provide pascal-triangle)
