#lang racket/base

(define (make-interval a b)
  (cons a b))

(define (lower-bound x)
  (cond
   ((< (car x) (cdr x))
    (car x))
   (else (cdr x))))

(define (upper-bound x)
  (cond
   ((< (car x) (cdr x))
    (cdr x))
   (else (car x))))

(define (add-interval x y)
  (make-interval (+ (lower-bound x)
                    (lower-bound y))
                 (+ (upper-bound x)
                    (upper-bound y))))

(define (sub-interval x y)
  (make-interval (- (lower-bound x)
                    (lower-bound y))
                 (- (upper-bound x)
                    (upper-bound y))))

(define (mul-interval x y)
  (let ((p1 (* (lower-bound x)
               (lower-bound y)))
        (p2 (* (lower-bound x)
               (upper-bound y)))
        (p3 (* (upper-bound x)
               (lower-bound y)))
        (p4 (* (upper-bound x)
               (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))

;;|    | --        | -0           | -+   | 0+           | ++        |
;;|----+-----------+--------------+------+--------------+-----------|
;;| -- | p4p1      | (p2/p4)p1    | p2p1 | p2(p1/p3)    | p2p3      |
;;| -0 | (p3/p4)p1 | (p2/p3/p4)p1 | p2p1 | p2(p1/p3/p4) | p2(p3/p4) |
;;| -+ | p3p1      | p3p1         | nil  | p2p4         | p2p4      |
;;| 0+ | p3(p1/p2) | p3(p1/p2/p4) | p3p4 | (p1/p2/p3)p4 | (p1/p2)p4 |
;;| ++ | p3p2      | p3(p2/p4)    | p3p4 | (p1/p3)p4    | p1p4      |
;;
;;|      | [--] | [-+] | [++] |
;;|------+------+------+------|
;;| [--] | p4p1 | p2p1 | p2p3 |
;;| [-+] | p3p1 | nil  | p2p4 |
;;| [++] | p3p2 | p3p4 | p1p4 |

(define (mul-interval-nine x y)
  (let ((xlo (lower-bound x))
        (xhi (upper-bound x))
        (ylo (lower-bound y))
        (yhi (upper-bound y)))
    (cond
     ((and (>= xlo 0)
           (>= xhi 0)
           (>= ylo 0)
           (>= yhi 0))
      (make-interval (* xlo ylo)
                     (* xhi yhi)))
     ((and (>= xlo 0)
           (>= xhi 0)
           (<= ylo 0)
           (>= yhi 0))
      (make-interval (* xhi ylo)
                     (* xhi yhi)))
     ((and (>= xlo 0)
           (>= xhi 0)
           (<= ylo 0)
           (<= yhi 0))
      (make-interval (* xhi ylo)
                     (* xlo yhi)))
     ((and (<= xlo 0)
           (>= xhi 0)
           (>= ylo 0)
           (>= yhi 0))
      (make-interval (* xlo yhi)
                     (* xhi yhi)))
     ((and (<= xlo 0)
           (>= xhi 0)
           (<= ylo 0)
           (>= yhi 0))
      (make-interval (min (* xhi ylo)
                          (* xlo yhi))
                     (max (* xlo ylo)
                          (* xhi yhi))))
     ((and (<= xlo 0)
           (>= xhi 0)
           (<= ylo 0)
           (<= yhi 0))
      (make-interval (* xhi ylo)
                     (* xlo ylo)))
     ((and (<= xlo 0)
           (<= xhi 0)
           (>= ylo 0)
           (>= yhi 0))
      (make-interval (* xlo yhi)
                     (* xhi ylo)))
     ((and (<= xlo 0)
           (<= xhi 0)
           (<= ylo 0)
           (>= yhi 0))
      (make-interval (* xlo yhi)
                     (* xlo ylo)))
     ((and (<= xlo 0)
           (<= xhi 0)
           (<= ylo 0)
           (<= yhi 0))
      (make-interval (* xhi yhi)
                     (* xlo ylo))))))

(define (div-interval x y)
  (if (and (< (lower-bound y) 0)
           (> (upper-bound y) 0))
      (error "Can not cross 0 middle")
    (make-interval (/ 1.0
                      (upper-bound y))
                   (/ 1.0
                      (lower-bound y)))))

(provide add-interval mul-interval div-interval
         make-interval lower-bound upper-bound sub-interval
         mul-interval-nine)
