# Chapter 3 - Organization of the IBM Personal Computers

Reference: *Assembly Language Programming and Organization of the IBM PC*, Ytha Yu & Charles Marut (Chapter 3).

This chapter is mostly theoretical (architecture-focused), so it contains fewer `.asm` files
than the later, programming-heavy chapters.

## Topics Covered
- Microcomputer components (CPU, Memory, I/O devices)
- The 8086 processor
- General-purpose registers: `AX`, `BX`, `CX`, `DX`
- Pointer/index registers: `SP`, `BP`, `SI`, `DI`
- Segment registers: `CS`, `DS`, `SS`, `ES`
- `IP` and the `FLAGS` register
- Memory segmentation: segment and offset
- Logical address vs. physical address
- Real-address mode
- DOS and BIOS basics
- Program Segment Prefix (PSP)

## Key Formula
```
Physical Address = Segment x 10H + Offset
```

### Worked Example
```
Segment:Offset = 1234:5678
1234H x 10H = 12340H
12340H + 5678H = 179B8H   <- Physical Address
```

## Programs
| File | Description |
|---|---|
| `01_physical_address_calc.asm` | Shows segment:offset addressing in action using `DS:BX` |
