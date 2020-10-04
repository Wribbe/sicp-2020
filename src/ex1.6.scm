; Exercise 1.6
; ------------

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(display (new-if (= 2 3) 0 5)) (newline)
(display (new-if (= 1 1) 0 5)) (newline)

;(define (sqr-iter guess x)
;  (new-if (good-enough? guess x)
;          guess
;          (sqrt-iter (improve guess x)
;                     x)))

; regular-form procedures always evaluate both arguments -> stuck in infinite
; loop.
