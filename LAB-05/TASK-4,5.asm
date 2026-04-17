                              .MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here              

    A1 DB 5 DUP(?) 
     A2 DB 5 DUP(?)
 

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
      
      
    
      MOV A1[SI],AL
      
      ADD SI,1
      
      LOOP  LOOOOPS 
      
      
      
      MOV CX,6   
      MOV SI,5   
      MOV DI,0
      ANSWER: 
      MOV AL,,A1[SI]   
      MOV A2[DI],AL
      
      DEC SI
      INC DI
      
      LOOP  ANSWER  
      
      MOV CX,6
      MOV SI,0
      
      PRINT:    
      MOV BL,A2[SI]
      
      MOV DL,BL
      MOV AH,2
      INT 21H
      
      INC SI
      
      
      LOOP PRINT
      


 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
