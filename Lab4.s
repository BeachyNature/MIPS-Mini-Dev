#
# Gets a sum value then square it and then cubes it.
# It prints each result for all sums.
#
# Lab 4
# Author: Connor Beachy
# Date: 9/24/2019
#
.data
p1: .asciiz "Enter N Value"
p2: .asciiz "\nAnswer: "

.text
.globl main
main:

la $a0, p1
li $v0, 4
syscall

li $v0, 7
syscall

# for sum
li $t1, 0

# sum ^2
li $t2, 0

# sum ^3
li $t3, 0

loop:
	beqz $v0, end
	add $t1, $t1, $v0
	mul $t5, $v0, $v0
	add $t2, $t2, $t5

	mul $t6, $v0, $v0
	mul $t6, $v0, $t6
	add $t3, $t3, $t6
	addi $v0, $v0, -1
j loop
end:

la $a0, p2
li $v0, 4
syscall

move $a0, $t1
li $v0, 1
syscall

la $a0, p2
li $v0, 4
syscall

move $a0, $t2
li $v0, 1
syscall

la $a0, p2
li $v0, 4
syscall

move $a0, $t3
li $v0, 1
syscall

li $v0, 10
syscall