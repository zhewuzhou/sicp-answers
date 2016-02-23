(define (sum-three x y z)
  (cond ((and (<= x y) (<= x z))(+ y z))
        ((and (<= y x) (<= y z))(+ x z))
        ((and (<= z x) (<= z y))(+ x y))))

(sum-three 1 2 3)
