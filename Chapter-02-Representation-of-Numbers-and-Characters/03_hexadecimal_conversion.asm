; ============================================================
; Program : Byte to Hexadecimal Display
; Chapter : Chapter 2
; Topic   : Number Systems (Binary/Decimal -> Hex)
; ============================================================

; Idea: Convert the byte in NUM into two hex digits and display them.
; Example: 182 decimal = B6H -> prints "B6"

.MODEL SMALL
.STACK 100H

.DATA
    NUM  DB 182     ; B6H

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV AL,NUM
    MOV BL,AL
    MOV CL,4
    SHR BL,CL        ; BL = high nibble
    AND AL,0FH       ; AL = low nibble
    MOV BH,AL        ; BH = low nibble (kept safe)

    ; --- print high nibble ---
    CMP BL,9
    JBE H_NUM
    ADD BL,7         ; 'A'-'9'-1 adjustment
H_NUM:
    ADD BL,'0'
    MOV DL,BL
    MOV AH,2
    INT 21H

    ; --- print low nibble ---
    CMP BH,9
    JBE L_NUM
    ADD BH,7
L_NUM:
    ADD BH,'0'
    MOV DL,BH
    MOV AH,2
    INT 21H

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN

; Sample Output: B6
