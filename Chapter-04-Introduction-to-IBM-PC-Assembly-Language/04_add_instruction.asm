; ============================================================
; Program : Addition of Two Numbers
; Chapter : Chapter 4
; Topic   : Arithmetic (ADD)
; ============================================================

; Idea: Add two numbers stored in memory and display the sum as digits.

.MODEL SMALL
.STACK 100H

.DATA
    NUM1  DB 5
    NUM2  DB 3
    MSG   DB 'Sum = $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    LEA DX,MSG
    MOV AH,9
    INT 21H

    MOV AL,NUM1
    ADD AL,NUM2        ; AL = NUM1 + NUM2 = 8
    ADD AL,'0'         ; convert to ASCII (works for single-digit sums)
    MOV DL,AL
    MOV AH,2
    INT 21H

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN

; Sample Output: Sum = 8
