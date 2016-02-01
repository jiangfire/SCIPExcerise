#lang scheme
(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
              (fib (- n 2))))))
;这个是树形的展开，运算时间是指数增长的