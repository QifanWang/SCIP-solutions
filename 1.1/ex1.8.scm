
; newton's method
(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3)
;  (+ (/ (* 2 guess) 3) (/ x (* 3 guess guess)))
)

; use machine precision as limit
(define (guess-good? guess x)
  (= (improve guess x) guess)
)


(define (cube-root guess x)
  (
   if (guess-good? guess x)
      guess
      (cube-root (improve guess x) x)
  )
)

(define (my-cube-root x) (cube-root 1.1 x))


;test
(my-cube-root 27)
(my-cube-root (* 2 (sqrt 2)))
(my-cube-root 0)
(my-cube-root -8)
(my-cube-root (* 3.14 3.14 3.14))
(my-cube-root -2)
