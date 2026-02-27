
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

; DL reginde verile ust limit degerine kadar olan asal sayilar
; hesaplayan ve bellekte 0700:0200h adresinden itibaren
; yerlestiren program


org 100h
    
MOV BX,0200H ;dizi baslangici
MOV DL,44
MOV DI,0     ;dizi indeksi
    

    
J1:    
MOV CL,2     ;bolen
MOV SI,0     ;bayrak (asal mi?)

kontrol:  
 MOV AL,DL
 MOV AH,0
    
 DIV CL
    
 CMP AH,0     ; reminder->0 ise yani tam bolunmusse asal olamayabilir..
 JZ no_asal       
    
 
 INC CL
 CMP CL,DL    ; cl nin sinir kontrolu
 JB kontrol
 
 ;ASAL 
 MOV [BX+DI],DL 
 INC DI
 
no_asal:
 DEC DL
 CMP DL,1
 JNZ J1       ; 1e kadar devam





HLT

ret




