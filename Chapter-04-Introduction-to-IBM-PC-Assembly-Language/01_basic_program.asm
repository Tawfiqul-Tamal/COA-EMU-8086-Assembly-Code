; ============================================================
; Program : Basic Program Skeleton
; Chapter : Chapter 4
; Topic   : Program Structure (.MODEL/.STACK/.DATA/.CODE)
; ============================================================

; Idea: The minimal skeleton every 8086 assembly program follows.

.MODEL SMALL
.STACK 100H

.DATA
    ; variables go here

.CODE
MAIN PROC
    MOV AX,@DATA     ; load data segment address into AX
    MOV DS,AX         ; initialize DS (data segment register)

    ; instructions go here

    MOV AH,4CH        ; DOS function: terminate program
    INT 21H
MAIN ENDP
END MAIN
