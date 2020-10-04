; Exercise 1.9.
; -------------

; a)
; --
;(define (+ a b)
;	(if (= a 0)
;			b
;			(inc (+ (dec a) b))))
;
; b)
; --
;(define (+ a b)
;	(if (= a 0)
;			b
;			(+ (dec a) (inc b))))

; (+ 4 5)
;(if (= 4 0)
;		(inc (inc (+ (dec 3 .. (dec 4) 5))))
; -> Recursive.


; (+ (dec 4) (inc 5))
; (+ (dec 3) (inc 6))
; (+ (dec 2) (inc 7))
; ...
;
; -> Iterative.
