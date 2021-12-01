(DEFUN split_smaller_equal (L E)
    (COND
        ((NULL L) L)
        ((<= (CAR L) E)
            (CONS
                (CAR L) (split_smaller_equal (CDR L) E)))
        (T
            (split_smaller_equal (CDR L) E))))

(DEFUN split_greater (L E)
    (COND ((NULL L) L)
        ((> (CAR L) E)
            (CONS (CAR L) (split_greater (CDR L) E)))
        (T
            (split_greater (CDR L) E))))

(DEFUN split (L E)
    (LIST
        (split_smaller_equal L E)
        (split_greater L E)))

(DEFUN quicksort (L)
    (COND
        ((NULL L) L)
        (T
            (APPEND
                (quicksort
                    (CAR (split (CDR L) (CAR L))))
                (CONS
                    (CAR L) NIL)
                (quicksort
                    (CAR (CDR (split (CDR L) (CAR L)))))))))
