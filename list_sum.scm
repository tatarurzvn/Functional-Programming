
; write a function that adds two lists as follows:
; (-3 8 2)   |
; (1 -4 -3)  |  (-2 4 -1)

(define sum_lst (lambda (lst1 lst2)
                  (letrec ((f1 (lambda (lst1 lst2 acc)
                                 (if (or (null? lst1) (null? lst2))
                                     acc 
                                     (f1 (cdr lst1) (cdr lst2) (cons (+ (car lst1) (car lst2)) acc))
                                     ))))
                    (reverse (f1 lst1 lst2 '()))
                    )))
