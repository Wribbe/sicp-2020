; Exercise 1.1.
; -------------
(display 10) (newline)                      ; 10
(display (+ 5 3 4)) (newline)               ; 12
(display (- 9 1)) (newline)                 ;  8
(display (/ 6 2)) (newline)                 ;  3
(display (+ (* 2 4) (- 4 6))) (newline)     ;  6
(define a 3)
(define b (+ a 1))
(display (+ a b (* a b))) (newline)         ; 19
(display (= a b)) (newline)                 ; #f
(display (if (and (> b a) (< b (* a b)))
             b
             a)
         ) (newline)                        ;  4

(display (cond (( = a 4) 6)
               (( = b 4) (+ 6 7 a))
               (else 25))
         ) (newline)                        ; 16

(display (+ 2 (if (> b a) b a))) (newline)  ; 6

(display (* (cond ((> a b) a)
                  ((< a b) b)
                  (else -1))
            (+ a 1))
         ) (newline)                        ; 16
