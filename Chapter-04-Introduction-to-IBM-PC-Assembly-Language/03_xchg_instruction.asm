; ============================================================
; Program : XCHG Instruction
; Chapter : Chapter 4
; Topic   : Data Transfer (XCHG)
; ============================================================

; Idea: Swap the values of two registers using XCHG.

.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV AX,5
    MOV BX,10
    XCHG AX,BX         ; now AX=10, BX=5

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN
