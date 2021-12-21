(DEFUN zip (L1 L2)
    (COND
        ((NULL L1) L2)
        ((NULL L2) L1)
        (T
            (CONS
                (CAR L1)
                (CONS
                    (CAR L2)
                    (zip (CDR L1) (CDR L2)))))))
