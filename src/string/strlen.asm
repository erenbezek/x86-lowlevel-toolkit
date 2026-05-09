; Bellekteki bir string'in uzunlugunu hesaplayan program.
; String'in sonu null karakter (00h) ile bitmeli.
; Input:  SI = string'in baslangic adresi
; Output: CX = string uzunlugu

org 100h

MOV SI, offset metin
MOV CX, 0

saydir:
    MOV AL, [SI]
    CMP AL, 00h     ; null karakter mi?
    JE  bitti
    INC SI
    INC CX
    JMP saydir

bitti:
    HLT

metin db 'Merhaba', 00h

ret
