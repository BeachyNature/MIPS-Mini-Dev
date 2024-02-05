.data

str: .asciiz "Enter Celisus Value: "
str1: .asciiz "\nFahrenhiet Value: "

.text
.globl main
main:

la $a0, str
li $v0, 4
syscall

li $v0, 5
syscall

la $t1, str
li $t0, 0

mul $t0, $v0, 9
div $t0, $t0, 5
addi $t0, $t0, 32

la $a0, str1
li $v0, 4
syscall

move $a0, $t0
li $v0, 1
syscall

li $v0, 10
syscall
