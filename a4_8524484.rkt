#lang racket

;Mehezabin Ahamed 8524484 CSI2120 - A4

; Assignment was solved using the slides from the lecture as a reference and a few online sources

;a
; (sosd 130)
; =>10
(define (sosd x)
    (if (equal? x 0)
      0
      (+ (* (modulo x 10) (modulo x 10)) (sosd(/ (- x (modulo  x 10)) 10)))
 )
  )


;b
; (stop? 42)
; => #t

(define (stop? x)
  (if (or (= x 0) (= x 1) (= x 4)(= x 16) (= x 20) (= x 37) (= x 42) (= x 58) (= x 89) (= x 145))
  #t
  #f
  )
)


;c
;(ssod_series 120)
;=> '(5 25 29 85 89)

(define (ssod_series x)
  (if (equal? (stop? x) #t)
      '()
      (cons (sosd x) (ssod_series (sosd x)))
      )
  )



;d
;(happy? 44)
; #f

; the helper function
(define (last_element l)
    (cond (equal? null l)
    ((null? (cdr l)) (car l))
     (else (last_element (cdr l))))
  )

(define (happy? x)
 (if(equal? 1 (last_element (ssod_series x)))
    #t
    #f
    )
  )