# Chapter 2 - Representation of Numbers and Characters

Reference: *Assembly Language Programming and Organization of the IBM PC*, Ytha Yu & Charles Marut (Chapter 2).

## Topics Covered
- Decimal, Binary, and Hexadecimal number systems
- Binary <-> Decimal conversion
- Binary <-> Hexadecimal conversion
- Hexadecimal <-> Decimal conversion
- Signed and unsigned numbers
- 1's complement and 2's complement
- ASCII character representation
- Bit, byte, and word concepts

## Programs
| File | Description |
|---|---|
| `01_binary_to_decimal.asm` | Converts a binary byte to decimal digits and prints them |
| `02_decimal_to_binary.asm` | Displays the 8-bit binary form of a byte using `ROL` + `TEST`-style bit checks |
| `03_hexadecimal_conversion.asm` | Splits a byte into two nibbles and prints it as hexadecimal |
| `04_2s_complement.asm` | Computes the 2's complement (negative representation) of a byte |
| `05_ascii_character.asm` | Reads a character and shows how it is stored as an ASCII code |

## Key Formulas
```
1's complement = NOT value
2's complement = NOT value + 1
Physical value of signed byte range = -128 to +127
Unsigned byte range = 0 to 255
```

## Worked Example
```
10110110B  ->  Decimal: 182   Hex: B6H
-25 (decimal) in 8-bit 2's complement:
   25  = 00011001B
   NOT = 11100110B
   +1  = 11100111B = E7H
```
