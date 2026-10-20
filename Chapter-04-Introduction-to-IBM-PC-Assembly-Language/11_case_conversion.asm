; ============================================================
; Program : Lowercase to Uppercase Conversion
; Chapter : Chapter 4
; Topic   : Character Manipulation
; ============================================================

; Idea: Read a lowercase letter and convert it to uppercase by
; clearing bit 5 (subtracting 20H).

.MODEL SMALL
.STACK 100H

.DATA
    MSG  DB 'Enter a lowercase letter: $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    LEA DX,MSG
    MOV AH,9
    INT 21H

    MOV AH,1
    INT 21H            ; AL = lowercase letter

    SUB AL,20H         ; clear bit 5 -> converts to uppercase

    MOV DL,0DH
    MOV AH,2
    INT 21H
    MOV DL,0AH
    INT 21H

    MOV DL,AL
    MOV AH,2
    INT 21H            ; display uppercase letter

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN
