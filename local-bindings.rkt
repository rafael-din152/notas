#lang racket

(provide (all-defined-out))

;let uses all previous bindings

(define (silly-double x)
  (let ([x (+ x 3)] ;this will change x value to x + 3
        [y (+ x 2)]) ;this x is equal to the input x
    (+ x y -5)))

;let* uses only bindings from the local enviroment
;can only read bindings already produced
(define (silly-double x)
  (let* ([x (+ x 3)] ;x = x + 3
         [y (+ x 2)]) ;now y = (x + 3) + 2
    (+ x y -8)))

;letrec evaluate the expressions in the enviroment that includes all bindings
(define (silly-triple x)
  (letrec ([y (+ x 2)]
           [f (lambda (z) (+ z y w x))] ;eventhough w isn't defined yet letrec lets you call it inside a function
           [w (+ x 7)])
    (f -9)))
;letrec is very useful for mutual recursion


;define can also be used to create local bindings
(define (silly-mod2 x)
  (define (even? x) (if (zero? x) #t (odd? (- 1 x))))
  (define (odd? x) (if (zero? x) #f (even? (- 1 x))))
  (if (even? x) 0 1))
;letrec will also work in this example, since it's a mutual recursion