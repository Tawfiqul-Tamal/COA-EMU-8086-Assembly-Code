; ============================================================
; Program : Parity Flag (PF) Demonstration
; Chapter : Chapter 5
; Topic   : FLAGS Register - PF
; ============================================================

; Idea: PF is set when the low 8 bits of a result have an EVEN
; number of 1-bits.

.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV AL,00000011B    ; two 1-bits -> even parity -> PF = 1
    ADD AL,0             ; ADD with 0 still updates flags based on AL

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN
