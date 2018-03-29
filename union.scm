; union of two sets given as lists

(define union (lambda (lst1 lst2)
                (letrec ((f1 (lambda (lst acc)
                               (cond
                                 ((null? lst) (reverse acc))
                                 ((member (car lst) acc) (f1 (cdr lst) acc))
                                 (else (f1 (cdr lst) (cons (car lst) acc)))))))
                  (f1 lst2 (f1 lst1 '())))
                )
  )
