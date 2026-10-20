; ============================================================
; Program : Display a Character
; Chapter : Chapter 4
; Topic   : DOS INT 21H (AH=02H)
; ============================================================

; Idea: Display a single character using AH=02H.

.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV DL,'X'         ; character to display
    MOV AH,2           ; DOS function: display character
    INT 21H

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN

; Sample Output: X
