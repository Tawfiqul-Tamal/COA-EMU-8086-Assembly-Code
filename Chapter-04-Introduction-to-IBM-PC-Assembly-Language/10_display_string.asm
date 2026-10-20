; ============================================================
; Program : Display a String
; Chapter : Chapter 4
; Topic   : DOS INT 21H (AH=09H)
; ============================================================

; Idea: Display a string that must end with the '$' terminator.

.MODEL SMALL
.STACK 100H

.DATA
    MSG  DB 'Hello, 8086 Assembly!$'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    LEA DX,MSG         ; DX = offset of the string
    MOV AH,9           ; DOS function: display string
    INT 21H

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN

; Sample Output: Hello, 8086 Assembly!
