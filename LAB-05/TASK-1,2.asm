                              .MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here              

    BUSS DW 5 DUP(?)
    RESULT  DW 0

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

      MOV CX,5   
      MOV SI,0
      
      LOOOOPS:
      MOV AH,1
      INT 21H   
      
      SUB AL,48
      MOV BL,10
      MUL  BL
      
      MOV BL,AL
      MOV AH,1
      INT 21H  
      SUB AL,48
      ADD BL,AL
      
      
      MOV BH,0
      MOV BUSS[SI],BX 
      
      ADD SI,1
      
      LOOP  LOOOOPS 
      
      
      
      MOV CX,5   
      MOV SI,0
      ANSWER: 
      MOV BX,BUSS[SI]
      
      MOV BH,0
      
      ADD RESULT,BX
      
      LOOP        ANSWER
      


 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
