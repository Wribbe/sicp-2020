; Exercise 1.4
; ------------
; Observer that our model of evaluation allows for combinations whose operators
; are compound expressions. Use this observation to describe the behaviour of
; the following procedure:
;
; (define (a-plus-abs-b a b)
;   ((if (> b 0) + -) a b))

;((if (> b 0) + -) a b)
; b > 0 -> (+ a b)
; b < 0 -> (- a b)

; => a + |b|
