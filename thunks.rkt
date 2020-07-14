#lang racket
;;Este documento foi util para tirar duvidas sobre o funcionamento de um thunk
(define (e x y)
  (+ x y))
 
(define (soma-? x y)
  ((lambda (a b) e) x y))

(define (soma x y)
  ((lambda (a b) (e)) x y))
