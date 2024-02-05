#
# Convert Number into ASCII value
#
# Author: Connor Beachy
# Lab 8
# Date: 10/9/2019
#

.data
prompt: .asciiz "\n Enter the decimal number to convert = "
ans: .asciiz "\n\n ASCII for the given decimal in reverse order = "
bye: .asciiz "\n\n\n\n     You have a Wonderful Tuesday"
space: .asciiz " * "

.text
.globl main
main:

la $a0, prompt
li $v0, 4
syscall

li $v0, 5
syscall
move $t0, $v0

la $a0, ans
li $v0, 4
syscall

loop:
beqz $t0, end
rem $t1, $t0, 10
addi $t2, $t1, 48
div $t0, $t0, 10

move $a0, $t2
li $v0, 1
syscall

la $a0, space
li $v0, 4
syscall

j loop
end:

la $a0, bye
li $v0, 4
syscall

li $v0, 10
syscall