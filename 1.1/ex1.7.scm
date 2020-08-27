;For very small values of the radicand, the absolute tolerance of 0.001 is too large. e.g. (sqrt 0.000001) will not yield 0.001
;For too large values of the radicand, it will be hard to represent small differences between large numbers, limited by machine precision.

;So we can iterate until guess equals to next guess,
;getting answer to limit of system precision
(define (good-enough:? guess x)
  (= (improve guess x) guess))
