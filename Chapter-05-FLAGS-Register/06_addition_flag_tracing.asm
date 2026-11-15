; ============================================================
; Program : Addition Flag Tracing Practice
; Chapter : Chapter 5
; Topic   : Flag Tracing - ADD
; ============================================================

; Idea: A set of additions chosen to demonstrate every flag.
; Step through this program in EMU8086 (single-step / Debug) and
; watch CF, ZF, SF, OF, PF change after each ADD.

.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV AL,7FH
    ADD AL,01H          ; Case 1: 7FH+01H=80H -> OF=1, SF=1, CF=0

    MOV AL,0FFH
    ADD AL,01H          ; Case 2: FFH+01H=00H -> CF=1, ZF=1, OF=0

    MOV AL,80H
    ADD AL,80H          ; Case 3: 80H+80H=00H -> CF=1, ZF=1, OF=1 (neg+neg=pos)

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN

; Summary Table
; -------------------------------------------------
; Case | Operation   | Result | CF | ZF | SF | OF
; -------------------------------------------------
;  1   | 7FH + 01H   |  80H   | 0  | 0  | 1  | 1
;  2   | FFH + 01H   |  00H   | 1  | 1  | 0  | 0
;  3   | 80H + 80H   |  00H   | 1  | 1  | 0  | 1
; -------------------------------------------------
