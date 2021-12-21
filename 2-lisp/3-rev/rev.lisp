(load "../1-concatenate/concatenate.lisp")

(DEFUN rev (L)
    (COND
        ((null L) L)
        (T
            (conc
                (rev (CDR L))
                (LIST (CAR L))))))



;;(setq L '((1 2 3) (4 5 6) (7 8 9) (10 11 12)))

(cons
    (append
        (car L)
        (list (length (car L))))
    (cons
        (append
            (cadr L)
            (list (length (cadr L))))
        (cddr L)))


(if
    (NULL (cddr L))
        (cons
            (car L)
            (cons
                (cadr L)
                (list (+ (car (car L)) (car (cadr L))))))
        (cons
            (car L)
            (cons
                (cadr L)
                (cons
                    (reverse
                        (append
                            (reverse (caddr L))
                            (list (+ (car (car L)) (car (cadr L))))))
                    (cdddr L)))))
