; Exercise 1.8
; ------------
; Formulate cube-root procedure based on:
;
; ( x / y^2 ) + 2y
; ----------------
;        3

(define (cube-root x)
  (define (improve x y)
    (/ (+ (/ x (* y y)) (* 2 y)) 3))
  (define (good-enough? g1 g2)
    (< (abs (- g1 g2)) 1e-13))
  (define (cube-iter x guess previous-guess)
    (display guess) (newline)
    (display previous-guess) (newline)
    (display (- guess previous-guess)) (newline)
    (if (good-enough? guess previous-guess)
        guess
        (cube-iter x (improve x guess) guess)))
  (cube-iter x 1.0 0.0))


(display (cube-root 27)) (newline)
(display (cube-root (* 4 4 4))) (newline)
(display (cube-root 29)) (newline)
