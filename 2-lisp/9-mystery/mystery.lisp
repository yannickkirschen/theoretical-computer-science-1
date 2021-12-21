;; From screenshot!

(DEFUN mystery (L)
    (COND
        ((NULL L) 0)
        ((ATOM L) NIL)
        ((NULL (CDR L)) 0)
        ((> (CAR L) (CADR L))
            (+
                (mystery (CDR L))
                1))
        (T
            (mystery (CDR L)))))


;; Aufgabe b (Screenshot):
;;
;; K(0) = 1
;; K(1) = 1
;; K(n) = 3 + K(n - 1)
;;      = 3 * (n - 1) + 1
;;      = 3n - 2
