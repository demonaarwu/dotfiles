#lang racket

(define remainder
  (lambda (x y)
    (cond
      ((< x y) x)
      (else (remainder (- x y) y)))))
