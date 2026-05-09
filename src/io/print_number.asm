; AX registerindeki sayiyi ekrana yazdiran program.
; Input:  AX = sayi (ornegin 1234)
; Output: Ekrana "1234" yazilir.

org 100h

MOV AX, 1234

MOV CX, 0
MOV BX, 10

ayir:
    MOV DX, 0
    DIV BX
    PUSH DX
    INC CX
    CMP AX, 0
    JNZ ayir

yazdir:
    POP DX
    ADD DL, 30h
    MOV AH, 02h
    INT 21h
    LOOP yazdir

HLT

ret
