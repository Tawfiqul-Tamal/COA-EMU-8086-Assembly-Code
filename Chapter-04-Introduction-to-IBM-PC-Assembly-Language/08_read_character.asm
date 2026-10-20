; ============================================================
; Program : Read a Character
; Chapter : Chapter 4
; Topic   : DOS INT 21H (AH=01H)
; ============================================================

; Idea: Read a single character from the keyboard using AH=01H.

.MODEL SMALL
.STACK 100H

.DATA
    MSG  DB 'Enter a character: $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    LEA DX,MSG
    MOV AH,9
    INT 21H

    MOV AH,1           ; DOS function: read character (echoes automatically)
    INT 21H            ; AL = character entered

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN
