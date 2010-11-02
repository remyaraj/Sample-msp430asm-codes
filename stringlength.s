	.file	"a.c"
	.arch msp430x2013

	.text
	.p2align 1,0
.global	main
	.type	main,@function
/*******i****************
 * Function `main' 
 ***********************/
main:
	mov	#__stack, r1 
	mov	r1, r4 
	/* prologue ends here (frame size = 0) */
.L__FrameSize_main=0x0
.L__FrameOffset_main=0x2

/* The assembly code to find the length of a string store at the location 0x0220*/
	mov #0,r6
	mov #0x0220,r5
L1:	mov @r5,r7
	cmp.d #0,r7
	jz L2
	inc r6
	incd r5
	incd r9
	jmp L1
L2:	mov.d r6,r8  /*final length of the string is stored in register 8*/

	/* epilogue: frame size = 0 */
	br	#__stop_progExec__
.Lfe1:
	.size	main,.Lfe1-main
;; End of function 


/*********************************************************************
 * File a.c: code size: 7 words (0x7)
 * incl. words in prologues: 3, epilogues: 4
 *********************************************************************/
