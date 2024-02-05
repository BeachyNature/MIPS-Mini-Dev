#
# Convert Number into ASCII using stack pointer.
# Author: Connor Beachy
# Lab 8.s
# Date: 10/11/19
#

.data

prompt: .asciiz "\n Enter the decimal number to convert = " 
count: .asciiz "\n Number of digits entered: "
ans: .asciiz "\n\n ASCII for the given decimal in reverse order = "
bye: .asciiz "\n\n\n\n     You have a Wonderful Tuesday"
space: .asciiz " *"

.text
.globl main
main:

la $a0, prompt
li $v0, 4
syscall

li $v0, 5
syscall
move $t0, $v0

li $t1, 0 #counter
push:
beqz $t0, end
rem $t2, $t0, 10
addi $t2, $t2, 48
addi $sp, $sp, -4
sw $t2, 0($sp)
div $t0, $t0, 10
addi $t1, $t1, 1

j push
end: 

la $a0, count
li $v0, 4
syscall

move $a0, $t1
li $v0, 1
syscall

la $a0, ans
li $v0, 4
syscall

pop:
beqz $t1, end1
lw $t3, 0($sp)
addi $sp, $sp, 4

move $a0, $t3
li $v0, 1
syscall

la $a0, space
li $v0, 4
syscall
addi $t1, $t1, -1

j pop
end1:

la $a0, bye
li $v0, 4
syscall

li $v0, 10
syscall
