; ============================================================
; Program : Carry Flag (CF) Demonstration
; Chapter : Chapter 5
; Topic   : FLAGS Register - CF
; ============================================================

; Idea: Add two bytes that overflow beyond 8 bits (unsigned overflow)
; to show the Carry Flag being set.
; FFH + 01H = 100H -> CF=1 (carry out of bit 7), AL result = 00H

.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV AL,0FFH
    ADD AL,01H          ; AL becomes 00H, CF = 1 (unsigned overflow)

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN

; Trace:
;   FFH = 11111111
; + 01H = 00000001
; -----------------
;  100H = 00000000  (9th bit lost -> CF = 1, ZF = 1)
