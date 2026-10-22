; ============================================================
; Program : Zero Flag (ZF) Demonstration
; Chapter : Chapter 5
; Topic   : FLAGS Register - ZF
; ============================================================

; Idea: Subtract two equal values so the result is zero, setting ZF.

.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV AX,0005H
    SUB AX,0005H        ; result = 0000H -> ZF = 1

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN
