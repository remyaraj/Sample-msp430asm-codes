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

/*The assembly code for String Comparison stored at location 0x220 and 0x230 in the assumption that first string length is smaller than or equal to 2nd*/

        mov #0x0220,r5
        mov #0x230,r6
L1:     cmp #0,@r5
        jz L3
        mov @r6,r7
        sub @r5,r7
        jnz L2:
        incd r6
        incd r5
        jmp L1
L2:     mov #1,r8
        jmp L4
L3:     mov #0,r8
L4:     mov r8,r9
	

	/* epilogue: frame size = 0 */
	br	#__stop_progExec__
.Lfe1:
	.size	main,.Lfe1-main
;; End of function 


/*********************************************************************
 * File a.c: code size: 7 words (0x7)
 * incl. words in prologues: 3, epilogues: 4
 *********************************************************************/
