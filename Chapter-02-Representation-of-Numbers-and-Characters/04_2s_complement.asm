; ============================================================
; Program : 2's Complement of a Byte
; Chapter : Chapter 2
; Topic   : Signed Numbers / 2's Complement
; ============================================================

; Idea: Show the 2's complement of a number (used to represent negatives).
; 2's complement = 1's complement (NOT) + 1

.MODEL SMALL
.STACK 100H

.DATA
    NUM  DB 25          ; we will compute -25 in 2's complement (8-bit)

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV AL,NUM
    NOT AL              ; 1's complement
    ADD AL,1            ; add 1 -> 2's complement
    ; AL now holds the 8-bit representation of -25 = 0E7H

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN

; NUM = 25 = 00011001B
; NOT  = 11100110B (1's complement)
; +1   = 11100111B = 0E7H  = -25 (signed 8-bit)
