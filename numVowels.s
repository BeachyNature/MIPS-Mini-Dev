#
# Mips code for counting the vowels in a given string using procedure.
#
.data
str: .asciiz "The spirit is willing, but the flesh is weak - The vodka was good but the meat was rotten - Out of sight out of mind - Invisible insanity blind and insane"
msg: .asciiz "Given String = "
ans: .asciiz "\n\nNumber of vowels in the string = "

.text
.globl main
main:

# Main Program
la $a0, msg
li $v0, 4
syscall

la $a0, str
li $v0, 4
syscall

la $a0, ans
li $v0, 4
syscall

la $a0, str
jal vcount

move $a0, $v0
li $v0, 1
syscall

li $v0, 10
syscall

# Procedure 1
vcount:
	addi $sp, $sp, -16
	sw $a0, 0($sp)
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	sw $ra, 12($sp)

li $s0, 0
move $s1, $a0

loop:
	lb $a0, 0($s1)
	beqz $a0, end
	jal check
	add $s0, $s0, $v0
	addi $s1, $s1, 1
j loop
end:

move $v0, $s0

	lw $a0, 0($sp)
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	lw $ra, 12($sp)
	addi $sp, $sp, 16

jr $ra

# Procedure 2
check:
li $v0, 0
	beq $a0, 'a', yes
	beq $a0, 'e', yes
	beq $a0, 'i', yes
	beq $a0, 'o', yes
	beq $a0, 'u', yes
	beq $a0, 'A', yes
	beq $a0, 'E', yes
	beq $a0, 'I', yes
	beq $a0, 'O', yes
	beq $a0, 'U', yes

jr $ra
#-----------------------------
yes:
li $v0, 1

jr $ra
