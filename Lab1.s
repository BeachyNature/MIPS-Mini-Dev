#This is our first program
#Written by Connor Beachy
#Written on Aug 29, 2019

.data
str: .asciiz "Education is the most powerful weapon in which you use to change the world - Nelson Mandela"
prompt: .asciiz "The given string is: "
ans: .asciiz "\n\nThe number of Characters including space = "
bye: .asciiz "\n\nYou have a nice day!"

.text
.globl main

main:

la $t1,str
li $t2,0

loop:
lb $t3,0($t1)
beqz $t3, end
addi $t2, $t2, 1
addi $t1, $t1, 1

j loop

end:

la $a0, prompt
li $v0, 4
syscall

la $a0, str
li $v0, 4
syscall

la $a0, ans
li $v0, 4
syscall

move $a0,$t2
li $v0,1
syscall

la $a0, bye
li $v0, 4
syscall

li $v0,10
syscall
