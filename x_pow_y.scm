
; x pow y, x>0, y>0 -> tail recursion w/ letrec and named let

(define pow (lambda (xx yy)
              (letrec ((f1 (lambda (x y acc)
                             (if (= y 0)
                                 acc
                                 (f1 x (- y 1) (* acc x))
                                 )
                             )))
                (f1 xx yy 1)
                )))

(define pow2 (lambda (xx yy)
               (let f1 ((x xx) (y yy) (acc 1))
                 (if (= y 0)
                     acc
                     (f1 x (- y 1) (* acc x))
                     )
                 )))
