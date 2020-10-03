; Exercise 1.3
; -------------
; Define a procedure that takes three numbers as arguments and
; returns the sum of the squares of the two largest numbers.

(define (sq-sum a b) (+ (* a a) (* b b)))

(define (sq-sum-largest a b c)
  (cond
    ((and (>= a b) (>= b c)) (sq-sum a b))
    ((and (>= a b) (>= c b)) (sq-sum a c))
    (else (sq-sum b c))))

(display (sq-sum-largest 1 2 3)) (newline)
