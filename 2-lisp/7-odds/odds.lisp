(DEFUN odds (L)
    (COND
        ((NULL L) 0)
        ((NULL (CDR L)) (CAR L))
        (T
            (+
                (CAR L)
                (odds (CDDR L))))))
