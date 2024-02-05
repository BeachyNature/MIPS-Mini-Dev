#
# Convert Celcius to Farenheit with Single Precision
#
# Author: Connor Beachy
# Date: 11/11/2019
# SinglePrecision.s
#

.data

str: .asciiz "Enter degrees in Celcius: " 
ans: .asciiz "\nDegrees in Farenheit: "
value1: .float 5.00
value2: .float 9.00
value3: .float 32.00

.text
.globl main
main:

la $a0, str
li $v0, 4
syscall

li $v0, 6
syscall

l.s $f2, value1 #Define Single Precision Value
l.s $f4, value2
l.s $f6, value3

mul.s $f12, $f0, $f4
div.s $f12, $f12, $f2
add.s $f12, $f12, $f6

la $a0, ans
li $v0, 4
syscall

li $v0, 2
syscall

li $v0, 10
syscall