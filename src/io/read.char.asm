; Klavyeden bir karakter okuyan program.
; Input:  Klavyeden girilen karakter
; Output: AL = okunan karakterin ASCII kodu

org 100h

MOV AH, 01h     ; fonksiyon 01h: karakter oku
INT 21h         ; AL = okunan karakter

HLT

ret
