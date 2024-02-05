#
# Reverse String Through Stack
#
# Author: Connor Beachy
# Lab 7
# Date: 10/8/19
#

.data
str: .asciiz "If GM had kept up with technology like the Computer industry has, we would all be driving $25 cars that get 1000MPG - Bill Gates"
str1: .asciiz "\n\nReversed String: "

.text
.globl main
main:

la $a0, str
li $v0, 4
syscall

la $t0, str
li $t3, 0

loop:
lb $t2, 0($t0)
beqz $t2, end
addi $sp, $sp, -1
sb $t2, 0($sp)
addi $t0, $t0, 1
addi $t3, $t3, 1
j loop
end:

la $t0, str

loop2:
lb $t2, 0($t0)
beqz $t2, end2
lb $t3, 0($sp)
sb $t3, 0($t0)
addi $t0, $t0, 1
addi $sp, $sp, 1

j loop2
end2:

la $a0, str1
li $v0, 4
syscall

la $a0, str
li $v0, 4
syscall

li $v0, 10
syscall