(define xpowyS (lambda(x pow)
                 (if (= pow 0)
                     1
                     (* x (xpowyS x (- pow 1))))
                 )
  )

(define xpowyT (lambda(x pow acc)
                 (if (= pow 0)
                     acc
                     (xpowyT x (- pow 1) (* acc x)))
                 )
  )

(define fibT (lambda (x acc1 acc2)
               (if (= x 1)
                   acc1
                   (fibT (- x 1) acc2 (+ acc1 acc2)))
               )
  )

(define fibS (lambda (x)
               (cond
                 ((= x 1) 1)
                 ((= x 0) 0)
                 (else ( + (fibS (- x 1)) (fibS (- x 2))))
                 )
               )
  )

(define prodS (lambda (lst)
                (cond
                  ((null? lst) 1)
                  ((pair? (car lst)) (* (prodS(car lst)) (prodS (cdr lst))))
                  (else (* (car lst) (prodS (cdr lst))))
                  )
                )
  )

(define prodT (lambda (lst acc)
                (cond
                  ((null? lst) acc)
                  ((pair? (car lst)) (prodS (cdr lst) (* acc (car lst))))
                  (else (prodT (cdr lst) (* acc (car lst))))
                  )
                )
  )

(define search (lambda (lst x)
                 (cond
                   ((null? lst) #f)
                   ((eq? (car lst) x) #t)
                   (else (search (cdr lst) x)))

                 )
  )
(define sumOddS (lambda (lst)
                  (cond
                    ((null? lst) 0)
                    ((pair? (car lst)) (+ (sumOddS(car lst)) (sumOddS (cdr lst))))
                    (else (if (= (modulo (car lst) 2) 1)
                              (+ (car lst) (sumOddS (cdr lst)))
                              (sumOddS(cdr lst)))))))

