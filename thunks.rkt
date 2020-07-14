#lang racket

(define (e x y)
  (+ x y))
 
(define (soma-? x y)
  ((lambda (a b) e) x y))

(define (soma x y)
  ((lambda (a b) (e)) x y))