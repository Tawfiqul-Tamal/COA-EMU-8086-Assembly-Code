; ============================================================
; Program : NEG Instruction
; Chapter : Chapter 4
; Topic   : Arithmetic (NEG - 2's complement negation)
; ============================================================

; Idea: NEG replaces a value with its 2's complement (arithmetic negation).

.MODEL SMALL
.STACK 100H

.DATA
    NUM  DB 25

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV AL,NUM
    NEG AL             ; AL = -25 (0E7H), CF is set because result != 0

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN
