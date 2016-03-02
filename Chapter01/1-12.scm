#lang scheme
;;这才是最正常的思路
(define (pascal-trangle row col)
  (cond ((= row 0) 1)
        ((= col 0) 1)
        (else (+ (pascal-trangle (- col 1) row) (pascal-trangle col (- row 1))))))
