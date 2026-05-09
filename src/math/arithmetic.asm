; Temel aritmetik islemler: toplama, cikarma, carpma, bolme
; Input:  BL = 12, CL = 4

org 100h

MOV BL, 12
MOV CL, 4

; Toplama: AX = 16
MOV AL, BL
ADD AL, CL
MOV AH, 0

; Cikarma: AX = 8
MOV AL, BL
SUB AL, CL
MOV AH, 0

; Carpma: AX = 48
MOV AL, BL
MOV AH, 0
MOV BH, 0
PUSH BX
MOV BL, CL
MUL BX
POP BX

; Bolme: AL = 3, AH = 0
MOV AL, BL
MOV AH, 0
DIV CL

HLT

ret
