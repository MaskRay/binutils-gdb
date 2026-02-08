	.text
	nop
local:
	.byte 0
.Ltemp:
	nop

.section .text1,"ax"
	call local
	call .Ltemp

.data
	.quad local + 16
	.quad .Ltemp + 16
