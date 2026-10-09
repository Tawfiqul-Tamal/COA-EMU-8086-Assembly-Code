; ============================================================
; Program : Binary to Decimal Conversion
; Chapter : Chapter 2
; Topic   : Number Systems (Binary -> Decimal)
; ============================================================

; Idea: Convert the byte value stored in NUM (binary) into its
; decimal digits and print them using repeated division by 10.
; Example: 10110110B = 182 decimal -> prints "182"

.MODEL SMALL
.STACK 100H

.DATA
    NUM     DB  182            ; 10110110B = 182 decimal
    DIGITS  DB  5 DUP(?)       ; holds digits in reverse order
    COUNT   DB  0

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV AL,NUM          ; number to convert
    MOV AH,0            ; AX = number (widen for DIV)
    LEA SI,DIGITS
    MOV CL,0            ; digit counter

DIVIDE_LOOP:
    MOV DL,0             ; clear DL for remainder use
    MOV BL,10
    DIV BL               ; AL = AX / 10 , AH = AX MOD 10
    MOV [SI],AH          ; store remainder (one digit)
    INC SI
    INC CL
    MOV AH,0             ; clear AH before next divide (quotient now in AL)
    CMP AL,0
    JNE DIVIDE_LOOP

    ; print digits in reverse order (last stored = most significant)
PRINT_LOOP:
    DEC SI
    MOV DL,[SI]
    ADD DL,'0'           ; convert digit to ASCII
    MOV AH,2
    INT 21H
    DEC CL
    JNZ PRINT_LOOP

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN

; Sample Output: 182
