                              .MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here              

    BUSS DB 5 DUP(?)
 

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
      
      
    
      MOV BUSS[SI],AL
      
      ADD SI,1
      
      LOOP  LOOOOPS 
      
      
      
      MOV CX,6   
      MOV SI,5
      ANSWER: 
      MOV BL,BUSS[SI]
      
      MOV DL,BL
      MOV AH,2
      INT 21H   
      DEC SI
      
      LOOP  ANSWER
      


 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
