	LDR R0, =0;SOMEWHERE TO SUM TO
	LDR R4, =array; R4: arr
	LDR R5, =8; R5: N SIZE (SQUARE MAT)
	MOV	R6, #0 ; COUNTER i FOR ROWS
fori
	CMP	R5, R6
	BLS	eFori ;IF WE'VE DONE ALL THE ROWS GO THERE
	MOV	R7, #0; ;COUNTER j FOR COLS
forj
	CMP	R5, R7
	BLS	eForj;IF DONE THIS COL GO THERE
	MUL	R9, R6, R5;ROW*ROW SIZE
	ADD	R9, R9, R7;ROW*ROW SIZE+ j (CURRENT COL)
	LDR	R10, [R4, R9, LSL #2]
	ADD	R0, R0, R10
	ADD	R7, R7, #1
	B	forj
eForj
	ADD	R6, R6, #1
	B	fori
eFori