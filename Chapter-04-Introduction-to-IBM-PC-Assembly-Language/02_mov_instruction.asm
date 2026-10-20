; ============================================================
; Program : MOV Instruction Practice
; Chapter : Chapter 4
; Topic   : Data Transfer (MOV)
; ============================================================

; Idea: Demonstrate different forms of the MOV instruction.

.MODEL SMALL
.STACK 100H

.DATA
    NUM1  DW 25
    NUM2  DW ?

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV BX,10          ; immediate -> register
    MOV CX,BX          ; register -> register
    MOV NUM2,BX        ; register -> memory
    MOV DX,NUM1        ; memory -> register

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN
