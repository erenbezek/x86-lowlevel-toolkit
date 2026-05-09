; DL registerindeki sayinin faktoriyelini hesaplayan program.
; Input:  DL = n (ornegin 5)
; Output: AX = n! (ornegin 120)
; Not: maksimum 8! hesaplanabilir (AX 16-bit old. icin)

org 100h

MOV DL, 5
MOV AX, 1
MOV CL, DL

CMP CL, 0
JE  bitti

dongu:
    MOV BL, CL
    MOV BH, 0
    MUL BX
    DEC CL
    JNZ dongu

bitti:
    HLT

ret
