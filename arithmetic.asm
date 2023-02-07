# arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#\courses\3209\files\230117\download
.text
main:
	li $v0, 5
	syscall

	# TODO: Write your code here
	move $t0,$v0
	li $v0, 5
	syscall
	
	move $t1,$v0
	li $v0, 5
	syscall
	
	move $t2,$v0

	sub $t0,$t0,$t1
	sll $t0,$t0,6
	li $t4, 100
	mult $t2,$t4
	mflo $t2
	add $t3, $t0, $t2

print:

	li $v0, 1
	move $a0,$t3
	syscall
	
	
exit:
	# Exit SPIM: Write your code here!
	li $v0, 10
	syscall
