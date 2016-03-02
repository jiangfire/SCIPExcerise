#lang scheme
(define (multi-line a b)
  (if (= b 0)
      0
      (+ a (multi-line a (- b 1)))))
(define (even? n)
  (= (remainder n 2) 0))
(define (double n) (* 2 n))
(define (halve n) (/ n 2))
(define (fast-multi a b product)
  (cond ((= b 0) product)
        ((even? b) (fast-multi (double a) (halve b) product))
        (else (fast-multi a (- b 1) (+ a product)))))