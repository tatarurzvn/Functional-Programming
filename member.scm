; Check if x is a member of lst

(define member1?
  (lambda (lst x)
    (cond
      ((null? lst) #f)
      ((eq? x (car lst)) #t)
      (else (member1? (cdr lst) x))
      )
    )
  )