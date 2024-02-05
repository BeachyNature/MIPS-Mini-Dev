.data

str: .asciiz "The given string: "
str1: .asciiz "FSHJASCHWAHLICSLAD"
ans: .asciiz "\nLowercase Conversion: "
ans1: .asciiz "\nNumber of characters: "

.text
.globl main
main:

la $a0, str
li $v0, 4
syscall

la $a0, str1
li $v0, 4
syscall

la $t1, str1
li $t0, 0

la $t3, str1
li $t4, 0

loop:
lb $t2, 0($t1)
beqz $t2, end
addi $t0, $t0, 1
addi $t2, $t2, 32
sb $t2, 0($t1)
addi $t1, $t1, 1
j loop
end:

la $a0, ans
li $v0, 4
syscall

la $a0, str1
li $v0, 4
syscall

loop2:
lb $t2, 0($t3)
beqz $t2, end2 
addi $t3, $t3, 1
addi $t4, $t4, 1
j loop2
end2:

la $a0, ans1
li $v0, 4
syscall

move $a0, $t4
li $v0, 1
syscall

li $v0, 10 
syscall