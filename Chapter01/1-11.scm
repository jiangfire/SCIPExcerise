
#lang scheme
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))
(define (f-iter-f count answer1 answer2 answer3)
  (cond ((= count 1) 1)
        ((= count 2) 2)
        ((= count 3) answer3)
        (else (f-iter-f (- count 1) answer2 answer3 (+ (* answer1 3) (* answer2 2) answer3)))))

(define (f-iter n)
  (f-iter-f (+ n 1) 0 1 2))
