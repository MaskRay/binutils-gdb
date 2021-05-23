	.text
	.global global_fun
	.type	global_fun, %function
global_fun:
	.space	4
	.weak	weak_fun
	.type	weak_fun, %function
weak_fun:
	.space	4

	.section .data,"aw",%progbits
	.p2align 3
	.dc.a	global_data
	.dc.a	global_fun
	.dc.a	weak_fun

	.global global_data
global_data:
