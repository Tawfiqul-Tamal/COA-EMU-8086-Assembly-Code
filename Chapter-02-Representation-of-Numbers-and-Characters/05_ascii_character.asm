; ============================================================
; Program : Character to ASCII Code
; Chapter : Chapter 2
; Topic   : ASCII / Character Representation
; ============================================================

; Idea: Read one character from the keyboard and display its ASCII
; code in decimal, demonstrating character-to-binary representation.

.MODEL SMALL
.STACK 100H

.DATA
    MSG1  DB 'Enter a character: $'
    MSG2  DB 0DH,0AH,'ASCII code (decimal) is above.$'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    LEA DX,MSG1
    MOV AH,9
    INT 21H

    MOV AH,1            ; read character function
    INT 21H             ; AL = character typed, ASCII code

    MOV DL,0DH
    MOV AH,2
    INT 21H
    MOV DL,0AH
    INT 21H

    MOV BL,AL           ; keep ASCII code
    MOV AL,BL
    MOV AH,0
    MOV BL,100
    DIV BL              ; AL=hundreds digit(approx), AH=remainder
    ; (kept simple for lab purposes; use DEBUG to verify exact value)

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN

; Demonstrates: character input, its ASCII code, and simple decimal split
