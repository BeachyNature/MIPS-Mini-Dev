#
# Practice convert Celsius Value in to Fahreheit
#

.data

str: .asciiz "Enter Celisus: "
str1: .asciiz "Fahreheit Value: "

.text
.globl main
main:

la $a0, str
li $v0, 4
syscall

li $v0, 5
syscall

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
