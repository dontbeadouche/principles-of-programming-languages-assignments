(defun odd_sum(x y)
        (cond   ( (> x y) 0 )
                ( (= (rem x 2) 0) (odd_sum (+ x 1) y) )
                ( t (+ x (odd_sum (+ x 2) y) ) )
        )
)

(defun even_sum(x y)
        (cond   ( (> x y) 0 )
                ( (= (rem x 2) 1) (even_sum (+ x 1) y) )
                ( t (+ x (even_sum (+ x 2) y) ) )
        )
)

(defun main()
        
                (princ "Enter lower bound: ")
                (setq n1 (read))
                (princ "Enter upper bound: ")
                (setq n2 (read))

                (format t "The Sum of all odd numbers in range [~D, ~D] = ~D ~%" n1 n2 (odd_sum n1 n2))                           
                (format t "The Sum of all even numbers in range [~D, ~D] = ~D ~%" n1 n2 (even_sum n1 n2))
)
        

(main)