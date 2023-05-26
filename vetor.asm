.data

vetor: .word 0:20

.text 

	la $t1, vetor
	li $t2, 10
	sw $t2, ($t1)
	
	add $t1, $t1, 4
	li $t2, 11
	sw $t2, ($t1)