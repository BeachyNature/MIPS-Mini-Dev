#
# Gets a sum value then square it and then cubes it using floats.
# It prints each result for all sums.
#
# Summation.s
# Author: Connor Beachy
# Date: 11/12/2019
#

.data
p1: .asciiz "Enter N Value: "
p2: .asciiz "\nAnswer: "
value: .double -1.0

.text
.globl main
main:

la $a0, p1
li $v0, 4
syscall

li $v0, 7
syscall

mov.d $f2, $f0

l.d $f16, value

loop:
	add.d $f4, $f4, $f2
	mul.d $f6, $f2, $f2
	add.d $f8, $f8, $f6
	
	mul.d $f10, $f6, $f2
	add.d $f14, $f14, $f10
	add.d $f2, $f2, $f16
	
	c.eq.d $f2, $f20
	bc1t end
j loop
end:

la $a0, p2
li $v0, 4
syscall

mov.d $f12, $f4
li $v0, 3
syscall

la $a0, p2
li $v0, 4
syscall

mov.d $f12, $f8
li $v0, 3
syscall

la $a0, p2
li $v0, 4
syscall

mov.d $f12, $f14
li $v0, 3
syscall

li $v0, 10
syscall