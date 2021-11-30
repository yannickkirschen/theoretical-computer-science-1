(DEFUN divide (L)
    (COND
        ((NULL L)
            (LIST
                L L))
        ((NULL (CDR L))
            (LIST
                L NIL))
        (T
            (LIST
                (CONS
                    (CAR L)
                    (CADR (divide (CDDR L))))
                (CONS
                    (CADR L)
                    (CADR (divide (CDDR L))))))))

(DEFUN mrg (L1 L2)
    (COND
        ((NULL L1) L2)
        ((NULL L2) L1)
        ((<= (CAR L1) (CAR L2))
            (CONS
                (CAR L1)
                (mrg (CDR L1) L2)))
        (T
            (CONS
                (CAR L2)
                (mrg L1 (CDR L2))))))

(DEFUN mergesort (L)
    (COND
        ((NULL L) L)
        ((NULL (CDR L)) L)
        (T
            (mrg
                (mergesort
                    (CAR (divide L)))
                (mergesort
                    (CADR (divide L)))))))
