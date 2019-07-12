												 (count-change 11)
														 ;
														 ;
														 ;
												     (cc 11 5 )
												         ;
												;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
										   (cc 11 4)                (cc (- 11 50) 5)
											    ;                            ;
									    ;;;;;;;;;;;;;;;;;;;;                 ;
								  (cc 11 3)          (cc (- 11 25) 4)        0
									;                         ;
						;;;;;;;;;;;;;;;;;;;;;;;;;;;;;		  ;
			(cc 11 2)                    	     (cc 1 3)	  0
				;                                    ;
 		;;;;;;;;;;;;;;;;	                    ;;;;;;;;;;;;;;
 	(cc 11 1)      (cc 6 2)               (cc (- 1 10))    (cc 1 2)
		 ;			    ;	                   ;               ;
		 ;         ;;;;;;;;;;;;;               ;        ;;;;;;;;;;;;;;;
 		 1      (cc 6 1 )   (cc 1 2) 		   0	 (cc 1 1)    (cc (- 1 5) 2)
		 			;           ;                        ;             ;
			 		;	   ;;;;;;;;;;;;;;	             ;             ;
				 	1   (cc 1 1)     (cc (- 1 5) 2)      1             0
			 			    ;              ;
			 			    ;              ;
			 			    1              0

; Space Complexity: O(n) - At Each node we only need to keep track of the nodes above. The longest branch is given by (n+4), that is, count n with just 1$ coins plus the 4
; nodes above, including root.

;Time complexity: O(n^k) being k the number of coins used.
;e.g, for 5 types of coins, time complexity is equal to O(n^5). Being n the amount to change, m the number of coins to make that change and d the denomination of the coin.
;For m=1, starting from the root (cc m 1), we have the evaluation of two subtrees: One that always evaluates to 0, that is: (cc m 0), (cc m-d 0), (cc m-2d 0) etc.
;and one resulting from subtracting d (in this case 1$) to the amount at each point. The creation of pairs of subtrees stops when the total amount reaches 0, which happens when
;n-kd = 0 => k= n/d , as d = 1$ , we have that n = k. So we infer that the total number of steps is proportional to the initial amount n and  the total number of
;subtrees generated is equal to (2n + 1), being one the root of the tree. The time complexity in this case is O(n)
;For m=2, we have a certain number of nodes to which we can subtract by 5 until it evaluates to zero. In each of these nodes, there is a resulting node with the same value but
;with only one coin:
;(cc 13 2) + (cc 13 1)
;(cc 8 2)  + (cc 8 1)
;(cc 3 2)  + (cc 3 1)
;(cc (- 3 5) 2) - Evaluates to zero

;In this case we have 4 nodes with two coins (3 times that we can subtract 5$ and one that evaluates to zero). So, when evaluating an amount with two coims, there are at most
;(n/5) + 1 nodes which include two coins until it reaches zero or a negative value. The remaining nodes with one coin we have already looked at its complexity: (2n + 1).
;So the overall number of steps with two coins is given by:
;(n/5) + 1 + ∑ TComplexity(n − 5k,1) with k starting from 0 to (n/5)
;(n/5) + 1 + ∑(2n -10k + 1) with k starting from 0 to (n/5)
;This expression eventually results in a second grade equation, which leads us to the time complexity = O(n^2)
;By doing all the expansions for the remaining coins we find that the orders of growth of number of steps is: O(n^k) being k the number fo coins used.
