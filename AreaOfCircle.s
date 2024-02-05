#
# Area of a circle in double precison
#
# Date: 11/7/2019
# Author: Connor Beachy

.data

pi:     .double 3.1415292653
radius: .double 12.34567890123
ans: .asciiz "The area of the circle is = "
bye: .asciiz "\n\nYou have a nice weekend!"

.text
.globl main
main:

la $a0, ans
li $v0, 4
syscall

l.d $f0, pi
l.d $f4, radius

mul.d $f12, $f4, $f4
mul.d $f12, $f12, $f0

li $v0, 3
syscall

la $a0, bye
li $v0, 4
syscall

li $v0, 10
syscall