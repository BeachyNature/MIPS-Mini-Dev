#
# Get each value entered by the user and run them through quadratic equation
# to get calculate answer.
#
# Lab 3
# Author: Connor Beachy
# Date: 9/25/19

.data

p1: .asciiz "Input a Value "
p2: .asciiz "Input b Value "
p3: .asciiz "Input c Value "
p4: .asciiz "Input x Value "
o1: .asciiz "\nGiven a Value: "
o2: .asciiz "\nGiven b Value: "
o3: .asciiz "\nGiven c Value: "
o4: .asciiz "\nGiven x Value: "
o5: .asciiz "\nGiven ax^2+bx+c Value: "

.text
.globl main
main:

la $a0, p1
li $v0, 4
syscall

li $v0, 5
syscall
move $t0, $v0

la $a0, p2
li $v0, 4
syscall

li $v0, 5
syscall
move $t1, $v0

la $a0, p3
li $v0, 4
syscall

li $v0, 5
syscall
move $t2, $v0

la $a0, p4
li $v0, 4
syscall

li $v0, 5
syscall
move $t3, $v0

mul $t4, $t3, $t3
mul $t5, $t4, $t0
mul $t6, $t1, $t3
add $t7, $t5, $t6
add $t8, $t7, $t2


la $a0, o1
li $v0, 4
syscall

move $a0, $t0
li $v0, 1
syscall

la $a0, o2
li $v0, 4
syscall

move $a0, $t1
li $v0, 1
syscall

la $a0, o3
li $v0, 4
syscall

move $a0, $t2
li $v0, 1
syscall

la $a0, o4
li $v0, 4
syscall

move $a0, $t3
li $v0, 1
syscall

la $a0, o5
li $v0, 4
syscall

move $a0, $t8
li $v0, 1
syscall

li $v0, 10
syscall
