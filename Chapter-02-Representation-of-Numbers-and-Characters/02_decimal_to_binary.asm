; ============================================================
; Program : Decimal to Binary Conversion (Display)
; Chapter : Chapter 2
; Topic   : Number Systems (Decimal -> Binary)
; ============================================================

; Idea: Take the byte in NUM and print its 8-bit binary representation
; by testing each bit from MSB to LSB using the TEST instruction pattern.

.MODEL SMALL
.STACK 100H

.DATA
    NUM  DB 182          ; decimal 182 = 10110110B

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV AL,NUM
    MOV CL,8              ; 8 bits to display

BIT_LOOP:
    MOV DL,0
    ROL AL,1               ; rotate MSB into CF and back into LSB position later
    JC  BIT_ONE
    MOV DL,'0'
    JMP DISPLAY_BIT
BIT_ONE:
    MOV DL,'1'

DISPLAY_BIT:
    MOV AH,2
    INT 21H
    DEC CL
    JNZ BIT_LOOP

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN

; Sample Output: 10110110
