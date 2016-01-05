#lang scheme
(define (which-are-large-two a b)
  (if (> a b) a b)
 )
(define (which-are-large-three a b c)
  (if (> c (which-are-large-two a b))
      c
      (which-are-large-two a b)
  )
)