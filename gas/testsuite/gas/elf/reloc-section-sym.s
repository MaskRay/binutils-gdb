	.text
local:
	.byte 0
.Ltemp:
	.byte 0

	.data
	.long local + 16
	.long .Ltemp + 16
