;new-if
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)
  )
)
;new-if-1, which wraps if, doesn't work 
(define (new-if-1 predicate then-clause else-clause)
  (
   if predicate
      then-clause
      else-clause
  )
)



;newton method
(define (average x y) (/ (+ x y) 2))
(define (square x) (* x x))
(define (good-enough? guess x)
  (
   < (abs (- (square guess) x)) 0.001
  )
)
(define (improve guess x)
  (
   average guess (/ x guess)
  )
)
(define (sqrt-iter guess x)
  (
   new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)
  )
)

; test
(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)
(sqrt (+ 100 37))
(sqrt (+ (sqrt 2) (sqrt 3)))
(square (sqrt 1000))

; When we attempt to use new-if to compute square roots, it will incur infinite recursion. If we wrap if in new-if-1, like wrapping condition in new-if, it will cause the same problem.
