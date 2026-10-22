; ============================================================
; Program : Sign Flag (SF) Demonstration
; Chapter : Chapter 5
; Topic   : FLAGS Register - SF
; ============================================================

; Idea: Subtract a larger number from a smaller one to get a
; negative result, setting the Sign Flag (SF = MSB of result).

.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV AX,0000H
    SUB AX,0001H        ; result = FFFFH (-1), SF = 1 (MSB=1)

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN
