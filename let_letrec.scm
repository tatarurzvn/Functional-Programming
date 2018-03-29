
; letrec
(define len1 (lambda (myLst)
               (letrec ((lenT (lambda (lst acc)
                                (if (null? lst)
                                    acc
                                    (lenT (cdr lst)(+ acc 1))
                                    )
                                )))
                 (lenT myLst 0)
                 )))


; named let
(define len2 (lambda (myLst)
               (let lenT ((lst myLst) (acc 0))
                 (if (null? lst)
                     acc
                     (lenT (cdr lst) (+ acc 1))
                     )
                 )))
