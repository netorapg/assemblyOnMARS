.data
newline: .asciiz "\n"

.text

	add $t0, $zero, 0
	add $t1, $zero, 3
	
loop:

	bge $t0, $t1, saiu_do_loop
	
	add $v0, $zero, 4
	la $a0, newline
	syscall
	
	add $t0, $t0, 1
	b loop
saiu_do_loop:

