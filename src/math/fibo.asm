
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
; DL regindeki sayiya en yakin iki fibonacci sayisini
; bulan program.. BH kucuk, BL buyuk de tutulsun.


org 100h

MOV DL,46

MOV AL,0
MOV BL,1

devam:
    MOV BH,BL
    ADD BL,AL
    MOV AL,BH
    
    CMP BL,DL
    JBE devam
    
    HLT


ret




