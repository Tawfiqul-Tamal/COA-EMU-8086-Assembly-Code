; ============================================================
; Program : Subtraction Flag Tracing Practice
; Chapter : Chapter 5
; Topic   : Flag Tracing - SUB
; ============================================================

; Idea: A set of subtractions chosen to demonstrate every flag.

.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV AX,0000H
    SUB AX,0001H        ; Case 1: 0-1 = FFFFH -> CF=1(borrow), SF=1

    MOV AX,0005H
    SUB AX,0005H        ; Case 2: 5-5 = 0000H -> ZF=1

    MOV AX,8000H
    SUB AX,0001H        ; Case 3: signed min - 1 -> OF=1

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN

; Summary Table
; ---------------------------------------------------
; Case | Operation      | Result | CF | ZF | SF | OF
; ---------------------------------------------------
;  1   | 0000H - 0001H  | FFFFH  | 1  | 0  | 1  | 0
;  2   | 0005H - 0005H  | 0000H  | 0  | 1  | 0  | 0
;  3   | 8000H - 0001H  | 7FFFH  | 0  | 0  | 0  | 1
; ---------------------------------------------------
