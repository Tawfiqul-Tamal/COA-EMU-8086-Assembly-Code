; ============================================================
; Program : Overflow Flag (OF) Demonstration
; Chapter : Chapter 5
; Topic   : FLAGS Register - OF (signed overflow)
; ============================================================

; Idea: Add two positive signed bytes whose sum exceeds +127,
; producing an incorrect (negative-looking) signed result -> OF=1.
; 7FH + 01H = 80H  (positive + positive = "negative" -> signed overflow)

.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV AL,7FH          ; +127
    ADD AL,01H          ; AL = 80H (-128 if read as signed) -> OF = 1, CF = 0

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN

; Trace:
;   7FH = 01111111 (+127)
; + 01H = 00000001 (+1)
; -----------------
;   80H = 10000000  -> CF=0, SF=1, OF=1 (signed overflow), ZF=0
; Explanation: two positives should never sum to a negative;
; since the sign bit changed unexpectedly, OF is set.
