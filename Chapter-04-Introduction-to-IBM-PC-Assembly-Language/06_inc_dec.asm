; ============================================================
; Program : INC and DEC Practice
; Chapter : Chapter 4
; Topic   : Arithmetic (INC/DEC)
; ============================================================

; Idea: Demonstrate incrementing and decrementing a register.

.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV CX,5
    INC CX             ; CX = 6
    DEC CX              
    DEC CX             ; CX = 4

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN
