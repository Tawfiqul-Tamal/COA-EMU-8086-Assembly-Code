# COA 8086 Assembly Language Lab

## About
This repository contains my COA (Computer Organization and Architecture) / 8086 Assembly
Language laboratory programs and study notes, developed and tested using **EMU8086**.
The programs are organized by textbook chapter and follow a simple, book-style
programming approach suitable for lab coursework.

## Reference Book
**Assembly Language Programming and Organization of the IBM PC**
Ytha Yu and Charles Marut, McGraw-Hill.

The chapter organization, instruction explanations, and pseudocode style
(`IF-THEN`, `IF-THEN-ELSE`, `CASE`, `WHILE`, `REPEAT-UNTIL`) used throughout this
repository follow this book.

## Platform
- 8086 Assembly Language
- EMU8086 (EMU8086-compatible / MASM-style syntax)
- `.MODEL SMALL`, `.STACK 100H`, `.DATA`, `.CODE`
- DOS interrupt `INT 21H` for input/output
- Simple register-based programs, no external libraries

## Chapters Covered
| Chapter | Title |
|---|---|
| 2 | Representation of Numbers and Characters |
| 3 | Organization of the IBM Personal Computers |
| 4 | Introduction to IBM PC Assembly Language |
| 5 | The Processor Status and the FLAGS Register |
| 6 | Flow Control Instructions |
| 7 | Logic, Shift, and Rotate Instructions |

## Topics
- Number systems: binary, decimal, hexadecimal, and conversions between them
- Signed/unsigned numbers, 1's and 2's complement, ASCII representation
- 8086 architecture: registers, memory segmentation, segment:offset addressing
- Program structure, `MOV`/`XCHG`/`ADD`/`SUB`/`INC`/`DEC`/`NEG`, `LEA`, DOS I/O
- The FLAGS register: `CF`, `ZF`, `SF`, `OF`, `PF`, `AF`, and manual flag tracing
- `CMP` and conditional jumps, `IF`/`CASE`/loop pseudocode structures
- Logic instructions (`AND`/`OR`/`XOR`/`NOT`/`TEST`), bit masking
- Shift (`SHL`/`SAL`/`SHR`/`SAR`) and rotate (`ROL`/`ROR`/`RCL`/`RCR`) instructions

## Repository Structure
```
COA-8086-Assembly-Lab/
├── README.md
├── Chapter-02-Representation-of-Numbers-and-Characters/
├── Chapter-03-Organization-of-the-IBM-PC/
├── Chapter-04-Introduction-to-IBM-PC-Assembly-Language/
├── Chapter-05-FLAGS-Register/
├── Chapter-06-Flow-Control-Instructions/
└── Chapter-07-Logic-Shift-and-Rotate/
```
Each chapter folder has its own `README.md` describing its programs and topics in detail —
see the links below.

- [Chapter 2 - Representation of Numbers and Characters](Chapter-02-Representation-of-Numbers-and-Characters/README.md)
- [Chapter 3 - Organization of the IBM PC](Chapter-03-Organization-of-the-IBM-PC/README.md)
- [Chapter 4 - Introduction to IBM PC Assembly Language](Chapter-04-Introduction-to-IBM-PC-Assembly-Language/README.md)
- [Chapter 5 - FLAGS Register](Chapter-05-FLAGS-Register/README.md)
- [Chapter 6 - Flow Control Instructions](Chapter-06-Flow-Control-Instructions/README.md)
- [Chapter 7 - Logic, Shift, and Rotate](Chapter-07-Logic-Shift-and-Rotate/README.md)

## How to Run
1. Download and install [EMU8086](https://emu8086-microprocessor-emulator.en.softonic.com/).
2. Open any `.asm` file from this repository in EMU8086.
3. Click **Compile** to assemble the program.
4. Click **Emulate** (or press F5) to run it, or use **Single Step** to trace it
   instruction by instruction and watch registers/flags update.

## DOS Interrupts Used (INT 21H)
| AH value | Function |
|---|---|
| `01H` | Read a character from the keyboard (with echo) |
| `02H` | Display a character (character in `DL`) |
| `09H` | Display a `$`-terminated string (address in `DX`) |
| `4CH` | Terminate the program and return to DOS |

## Important Instructions Reference
| Instruction | Purpose |
|---|---|
| `MOV` | Copy a value between register/memory/immediate |
| `XCHG` | Swap two operands |
| `ADD` / `SUB` | Addition / subtraction |
| `INC` / `DEC` | Increment / decrement by 1 |
| `NEG` | 2's complement negation |
| `CMP` | Compare two operands (sets flags, doesn't store result) |
| `JMP` | Unconditional jump |
| `JE`/`JZ`, `JNE`/`JNZ` | Jump if equal / not equal |
| `JA`/`JB`, `JG`/`JL` | Jump if above/below (unsigned), greater/less (signed) |
| `LOOP` | Decrement `CX` and jump if `CX <> 0` |
| `JCXZ` | Jump if `CX = 0` |
| `AND`, `OR`, `XOR`, `NOT` | Bitwise logic operations |
| `TEST` | Non-destructive `AND` used to check specific bits |
| `SHL`/`SAL`, `SHR`, `SAR` | Logical/arithmetic shifts |
| `ROL`, `ROR`, `RCL`, `RCR` | Rotate (with/without the carry flag) |

## Notes
These programs are written for educational COA laboratory practice and follow the
simple 8086/MASM style used in the reference course materials. They are intended to
be readable, traceable, and assembled/run directly in EMU8086.

## Author
Md. Tawfiqul Islam Tamal
