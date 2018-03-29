
; write a function that generates all the subsets with (n-1) elements of a set with n elements

(define subsets (lambda (lst n)
                  (letrec ((get_without (lambda (lst k new_lst)
                                          (if (= k 1)
                                              (append new_lst (cdr lst))
                                              (get_without (cdr lst) (- k 1) (cons (car lst) new_lst)))))
                           (gen_lst (lambda (lst n)
                                      (if (> n 0)
                                          (begin
                                           (display (get_without lst n '()))
                                           (gen_lst lst (- n 1)))
                                          )
                                      )
                                    )
                           )
                    (gen_lst lst n)
                    )
                  )
  )
