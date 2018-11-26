#	Name : Parth Poply 		ID : 2016A7PS0249U 

(de odd_sum (x y)
	(cond 
		((> x y) 0)
  		(( = (% x 2) 0) (odd_sum (+ x 1) y))
  		(t (+ x (odd_sum (+ x 2) y)))
  	)
 )

(de even_sum (x y)
	(cond 
		((> x y) 0)
		(( = (% x 2) 1) (even_sum (+ x 1) y))
		(t (+ x (even_sum (+ x 2) y)))
	)
)


(de main (n1 n2)
	
        (prinl "The Sum of all odd numbers between [" n1 ", " n2 "] = " (odd_sum n1 n2))
        (prinl "The Sum of all even numbers between [" n1 ", " n2 "] = " (even_sum n1 n2))
)
