#lang scheme
(define (expt-recur b n)
  (if (= n 0)
      1
      (* b (expt-recur b (- n 1)))))

(define (expt-iterd b counter product)
  (if (= counter 0)
      product
      (expt-iterd b
                 (- counter 1)
                 (* b product))))
(define (expt-iter b n)
  (expt-iterd b n 1))

(define (even? n)
  (= (remainder n 2) 0))

(define (square x) (* x x))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))
        ))

(define (fast-expt-iter b counter product s-counter)
  (cond ((and (= counter 0) (= s-counter 0)) product)
        ((= counter 0) (fast-expt-iter b counter (square product) (- s-counter 1)))
        ((even? counter) (fast-expt-iter b (/ counter 2) product (+ s-counter 1)))
        (else (fast-expt-iter b (- counter 1) (* b product) s-counter))))

(define (fast-expt-iter-stu a b n)
  (cond ((= n 0) a)
        ((even? n) (fast-expt-iter-stu a (square b) (/ n 2)))
        (else (fast-expt-iter-stu (* a b) b (- n 1)))))