; Euclid algoritmasi ile EBOB bulan program.
; Input:  BL = 48, CL = 18
; Output: AL = EBOB (6)

org 100h

MOV BL, 48
MOV CL, 18

dongu:
    CMP CL, 0
    JE  bitti
    MOV AL, BL
    MOV AH, 0
    DIV CL
    MOV BL, CL
    MOV CL, AH
    JMP dongu

bitti:
    MOV AL, BL
    HLT

ret
