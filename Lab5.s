#
# Have user input amount of numbers they want to get sum and average of.
#
# Author: Connor Beachy
# Lab 5
# Date: 9/25/19
#

.data

str: .asciiz "Enter amount of numbers you want to add and get average: "
str1: .asciiz "Enter value: "
ans: .asciiz "\nSum Value: "
ans1: .asciiz "\nAverage: "

.text
.globl main
main:

la $a0, str
li $v0, 4
syscall

li $v0, 5
syscall

move $t0,$v0


loop:
beqz $t0, end

la $a0, str1
li $v0, 4
syscall

li $v0, 5
syscall

	move $t2,$v0
	add $t3, $t3, $t2
	addi $t0, $t0, -1

j loop
end:

la $a0, ans
li $v0, 4
syscall

move $a0, $t3
li $v0, 1
syscall

div $t1, $t3, 2

la $a0, ans1
li $v0, 4
syscall

move $a0, $t1
li $v0, 1
syscall

li $v0, 10
syscall 