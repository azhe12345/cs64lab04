# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	# TODO: Write your string definitions here
	enter:       .asciiz "Enter an integer:\n"
	hello:       .asciiz "Hello World 2023!\n"
	mn:			 .asciiz "The magic number is "
	note:		 .asciiz "!!!\n"
#Text Area (i.e. instructions)
.text
main:
	li $v0, 4
	la $a0, enter
	syscall

	li $v0,5
	syscall
	move $t0,$v0
	
	li $v0, 4
	la $a0, hello
	syscall

	li $v0, 4
	la $a0, mn
	syscall
	li $v0, 1
	move $a0, $t0
	syscall
	
	li $v0, 4
	la $a0,note
	syscall
	# TODO: Write your code here

exit:
	li $v0, 10
	syscall
	# Exit SPIM: Write your code here!

