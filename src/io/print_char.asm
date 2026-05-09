; DL registerindeki ASCII karakteri ekrana yazdiran program.
; Input:  DL = ASCII karakter kodu (ornegin 65 = 'A')
; Output: Ekrana karakter yazilir.

org 100h

MOV DL, 65      ; 65 = 'A' ASCII kodu
MOV AH, 02h     ; fonksiyon 02h: karakter yazdir
INT 21h         ; DOS interrupt

HLT

ret
