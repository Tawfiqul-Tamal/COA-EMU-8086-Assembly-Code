; ============================================================
; Program : Subtraction of Two Numbers
; Chapter : Chapter 4
; Topic   : Arithmetic (SUB)
; ============================================================

; Idea: Subtract two numbers and display the (assumed single-digit,
; non-negative) result.

.MODEL SMALL
.STACK 100H

.DATA
    NUM1  DB 9
    NUM2  DB 4
    MSG   DB 'Difference = $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    LEA DX,MSG
    MOV AH,9
    INT 21H

    MOV AL,NUM1
    SUB AL,NUM2        ; AL = NUM1 - NUM2 = 5
    ADD AL,'0'
    MOV DL,AL
    MOV AH,2
    INT 21H

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN

; Sample Output: Difference = 5
