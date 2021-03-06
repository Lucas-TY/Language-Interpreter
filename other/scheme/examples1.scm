(define (qsort lst)
  (cond ((null? lst) '())
        (#t (append (qsort (sublist (lambda (a b) (lencmp <  a b)) (car lst) (cdr lst)))
                    (cons (car lst) '())
                    (qsort (sublist (lambda (a b) (lencmp >= a b)) (car lst) (cdr lst)))
            )
        )
  )
)
(define (lencmp cmp lst1 lst2)
  (cmp (len lst1) (len lst2))
)
(define (sublist cmp pivot lst)
  (cond ((null? lst)           '())
        ((cmp (car lst) pivot) (cons (car lst) (sublist cmp pivot (cdr lst))))
        (#t                    (sublist cmp pivot (cdr lst)))
  )
)

;(qsort '(54 3 2 4 24 6565 24 4245 2 43 22 467 75 676 4646 57664 6465 565 53 4 4 34 3 23))

;(qsort '((3 5 25 (3 3) z) (a b) (3) (7 (4)) ((3 54)) (3 (3)  3 23)))

(define (fmap lst n)
  (cond ((null? lst) '())
        (#t          (cons ((car lst) n) (fmap (cdr lst) n)))
  )
)

(define (fmap2 lst n m)
  (cond ((null? lst) '())
        (#t          (cons ((car lst) n m) (fmap2 (cdr lst) n m)))
  )
)

(define (mymap f lst)
  (cond ((null? lst) '())
        (#t          (cons (f (car lst)) (mymap f (cdr lst))))
  )
)

(define (twice f n)
  (f (f n))
)

(define (square x)
  (* x x)
)

(define (cube x)
  (* x x x)
)

;(mymap square '(1 2 3)) -> '(1 4 9)

;(fmap (list square cube) 8) -> '(64 512)

;(let ((x 2) (y 3))
;  (let ((x 7) (z (+ x y)))
;    (* z x)))

(define (maxlist lst)
  (cond ((null? (cdr lst))        (car lst))
        ((> (car lst) (cadr lst)) (maxlist (cons (car lst) (cddr lst))))
        (#t                       (maxlist (cdr lst)))
  )
)

;(define (maxlist lst)
;  (cond ((null? (cdr lst)) (car lst))
;        (#t (let ((m (maxlist (cdr lst))))
;               (cond ((> (car lst) m) (car lst))
;                     (#t              m)
;               )
;            )
;        )
;  )
;)

;(define (maxlist lst)
;  (cond ((null? (cdr lst))                 (car lst))
;        ((> (car lst) (maxlist (cdr lst))) (car lst))
;        (#t                                (maxlist (cdr lst)))
;  )
;)

(define (unique lst)
  (cond ((null? lst)                   '())
        ((null? (cdr lst))             lst)
        ((equal? (car lst) (cadr lst)) (unique (cdr lst)))
        (#t                            (cons (car lst) (unique (cdr lst))))
  )
)

(define (union lst1 lst2)
  (cond ((null? lst1) lst2)
        ((mbr (car lst1) lst2) (union (cdr lst1) lst2))
        (#t                    (cons (car lst1) (union (cdr lst1) lst2)))
  )
)
(define (mbr x lst)
  (cond ((null? lst)          #f)
        ((equal? x (car lst)) #t)
        (#t                   (mbr x (cdr lst)))
  )
)

(define (len lst)
  ;(cond ((b1 e1) (b2 e2) (b3 e3) ... (#t elast)))
  (cond ((null? lst) 0)
         (#t          (+ 1 (len (cdr lst))))
  )
)

(define (iseven n)
  (cond ((= n 0) #t)
        ((= n 1) #f)
        (#t      (iseven (- n 2)))
  )
)

; (maxlist '(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24))
; (maxlist '(24 23 22 21 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1))
