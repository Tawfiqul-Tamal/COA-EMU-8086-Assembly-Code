; ============================================================
; Program : LEA Instruction
; Chapter : Chapter 4
; Topic   : Addressing (LEA)
; ============================================================

; Idea: LEA loads the OFFSET address of a variable into a register,
; unlike MOV which loads the variable's VALUE.

.MODEL SMALL
.STACK 100H

.DATA
    MSG  DB 'LEA demo$'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    LEA DX,MSG         ; DX = address (offset) of MSG
    MOV AH,9
    INT 21H            ; INT 21H/09H expects the address in DX

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN

; Sample Output: LEA demo
