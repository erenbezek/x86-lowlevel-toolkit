; Iki string'i karsilastiran program.
; Input:  SI = birinci string adresi
;         DI = ikinci string adresi
; Output: AX = 0 ise esit, AX = 1 ise farkli

org 100h

MOV SI, offset str1
MOV DI, offset str2

karsilastir:
    MOV AL, [SI]
    MOV BL, [DI]
    CMP AL, BL
    JNZ farkli
    CMP AL, 00h     ; null'a ulastik mi?
    JE  esit
    INC SI
    INC DI
    JMP karsilastir

esit:
    MOV AX, 0
    JMP bitti

farkli:
    MOV AX, 1

bitti:
    HLT

str1 db 'Merhaba', 00h
str2 db 'Merhaba', 00h

ret
