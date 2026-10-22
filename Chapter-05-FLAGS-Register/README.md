# Chapter 5 - The Processor Status and the FLAGS Register

Reference: *Assembly Language Programming and Organization of the IBM PC*, Ytha Yu & Charles Marut (Chapter 5).

## Topics Covered
- The FLAGS register
- Carry Flag (CF)
- Zero Flag (ZF)
- Sign Flag (SF)
- Overflow Flag (OF)
- Parity Flag (PF)
- Auxiliary Carry Flag (AF)
- How `ADD` and `SUB` affect flags
- Difference between **unsigned overflow (CF)** and **signed overflow (OF)**
- Manual flag tracing

## Programs
| File | Description |
|---|---|
| `01_carry_flag_demo.asm` | Unsigned overflow sets CF |
| `02_zero_flag_demo.asm` | Equal subtraction sets ZF |
| `03_sign_flag_demo.asm` | Negative result sets SF |
| `04_overflow_flag_demo.asm` | Positive + positive = negative sets OF |
| `05_parity_flag_demo.asm` | Even number of 1-bits sets PF |
| `06_addition_flag_tracing.asm` | Three ADD cases covering CF/ZF/SF/OF |
| `07_subtraction_flag_tracing.asm` | Three SUB cases covering CF/ZF/SF/OF |

## CF vs OF - the key distinction
- **CF (Carry Flag)** — matters for **unsigned** arithmetic. Set when a carry/borrow occurs out of the most significant bit.
- **OF (Overflow Flag)** — matters for **signed** arithmetic. Set when the sign of the result is impossible given the signs of the operands (e.g. positive + positive giving a negative result).

## Worked Examples
```
7FH + 01H = 80H   -> CF=0 ZF=0 SF=1 OF=1   (signed overflow: + + + = -)
FFH + 01H = 00H   -> CF=1 ZF=1 SF=0 OF=0   (unsigned carry, no signed overflow)
80H + 80H = 00H   -> CF=1 ZF=1 SF=0 OF=1   (- + - = + is also a signed overflow)
0000H - 0001H = FFFFH -> CF=1 SF=1          (borrow occurred)
0005H - 0005H = 0000H -> ZF=1
```
