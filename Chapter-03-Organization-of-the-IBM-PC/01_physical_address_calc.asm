; ============================================================
; Program : Physical Address Calculation Demo
; Chapter : Chapter 3
; Topic   : Memory Segmentation
; ============================================================

; Idea: Demonstrate how a physical address is formed from a
; segment and an offset:  Physical = Segment * 10H + Offset
; Example used: Segment = 1234H, Offset = 5678H -> Physical = 179B8H
; This program loads DS with a segment value and uses an offset
; to access a variable, illustrating segment:offset addressing.

.MODEL SMALL
.STACK 100H

.DATA
    VALUE   DB  'Z'         ; a variable placed somewhere in DS

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX               ; DS = segment part of the address

    LEA BX,VALUE            ; BX = offset part of VALUE within DS
    MOV DL,[BX]             ; access VALUE using DS:BX (segment:offset)
    MOV AH,2
    INT 21H                 ; display 'Z' fetched via segment:offset addressing

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN

; Physical Address = Segment * 10H + Offset
; Example: Segment=1234H, Offset=5678H
;   1234H * 10H = 12340H
;   12340H + 5678H = 179B8H  <-- Physical Address
