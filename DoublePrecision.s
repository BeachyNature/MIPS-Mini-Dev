#
# Convert Celcius to Farenheit with Double Precision
#
# Author: Connor Beachy
# Date: 11/11/2019
# DoublePrecision.s
#

.data

str: .asciiz "Enter degrees in Celcius: " 
ans: .asciiz "\nDegrees in Farenheit: "
value1: .double 5.00
value2: .double 9.00
value3: .double 32.00

.text
.globl main
main:

la $a0, str
li $v0, 4
syscall

li $v0, 7
syscall

l.d $f2, value1 #Define Double Precision Value
l.d $f4, value2
l.d $f6, value3

mul.d $f12, $f0, $f4
div.d $f12, $f12, $f2
add.d $f12, $f12, $f6

la $a0, ans
li $v0, 4
syscall

li $v0, 3
syscall

li $v0, 10
syscall