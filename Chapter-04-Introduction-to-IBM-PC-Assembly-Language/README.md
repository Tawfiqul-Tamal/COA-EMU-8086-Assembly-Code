# Chapter 4 - Introduction to IBM PC Assembly Language

Reference: *Assembly Language Programming and Organization of the IBM PC*, Ytha Yu & Charles Marut (Chapter 4).

## Topics Covered
- Program structure: `.MODEL`, `.STACK`, `.DATA`, `.CODE`, `PROC`/`ENDP`, `END`
- `MOV`, `XCHG`
- `ADD`, `SUB`, `INC`, `DEC`, `NEG`
- `LEA` and addressing
- DOS interrupt `INT 21H` functions:
  - `AH=01H` - read character
  - `AH=02H` - display character
  - `AH=09H` - display string (must end with `$`)
  - `AH=4CH` - terminate program
- Basic case conversion using bit clearing

## Programs
| File | Description |
|---|---|
| `01_basic_program.asm` | Minimal program skeleton |
| `02_mov_instruction.asm` | MOV variations: immediate, register, memory |
| `03_xchg_instruction.asm` | Swapping two registers |
| `04_add_instruction.asm` | Adding two numbers and printing the result |
| `05_sub_instruction.asm` | Subtracting two numbers |
| `06_inc_dec.asm` | INC / DEC practice |
| `07_neg_instruction.asm` | 2's complement negation with NEG |
| `08_read_character.asm` | Reading a character (AH=01H) |
| `09_display_character.asm` | Displaying a character (AH=02H) |
| `10_display_string.asm` | Displaying a string (AH=09H) |
| `11_case_conversion.asm` | Lowercase to uppercase conversion |
| `12_lea_instruction.asm` | LEA vs MOV for addresses |

## Standard Program Template
```asm
.MODEL SMALL
.STACK 100H

.DATA
    ; data goes here

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    ; instructions

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN
```
