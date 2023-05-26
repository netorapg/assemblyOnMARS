.data

v_de_bytes: .byte 6 10 33 2

vetor: .word 30 1 2 3 4 5 6 7 8 9 153

newline: .asciiz "\n"

.text

	la $t1, vetor
	lw $t1, ($t1)
	move $a0, $t1
	li $v0, 1
	syscall
	
	add $v0,  $zero, 4
	la $a0, newline
	syscall
	
	add $v0, $zero, 4
	la $a0, newline
	syscall
	
	la $t1, vetor
	li $t2, 10
	sw $t2, ($t1)
	
	lw $t3, ($t1)
	move $a0, $t3
	li $v0, 1
	syscall
	
	add $v0, $zero, 4
	la $a0, newline
	syscall
	
	add $t1, $t1, 4
	li $t2, 11
	sw $t2, ($t1)
	
	la $t3, vetor 
	add $t3, $t3, 4
	lw $t3, ($t3)
	move $a0, $t3
	li $v0, 1
	syscall
	
	add $v0, $zero, 4
	la $a0, newline
	syscall
	