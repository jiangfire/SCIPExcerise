#lang scheme
(define (p) (p))
(define (test x y)
  (if (= x y)
      0
      y))
(test 0 (p))
;这个是应用的求值，先完全展开，然后才求值。（p）（p）
;展开后还是这样， 永远展不开，故是应用序
;而正则序则需则是先求值再展开，故不是死循环