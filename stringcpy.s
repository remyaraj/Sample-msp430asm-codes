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

/* To copy a string from location 0x220 to 0x230 */

	mov #0,r6
	mov #0x0220,r5
	mov #0x230,r9
L1:	mov @r5,r7
	cmp.d #0,r7
	jz L2
	mov r7,@r9
	inc r6
	incd r5
	incd r9
	jmp L1
L2:	mov.d r6,r8
	mov #0,@r9

	/* epilogue: frame size = 0 */
	br	#__stop_progExec__
.Lfe1:
	.size	main,.Lfe1-main
;; End of function 


/*********************************************************************
 * File a.c: code size: 7 words (0x7)
 * incl. words in prologues: 3, epilogues: 4
 *********************************************************************/
