.MODEL SMALL
 
.STACK 100H   



;QUESTION 7

;Write a program to read one of the hex digits A-F, 
;and display it on the next line in decimal.


.DATA

; declare variables here        
                                
    PRR DB 'ENTER A HEX DIGIT:  $'  
    ANSS DB 'IN DECIMAL IT IS   $'   


.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
                           
      LEA DX,PRR
      MOV AH,9
      INT 21H
      
      
      MOV AH,1
      INT 21H
      MOV BL,AL   
      
      
      MOV AH,2
      MOV DL,10
      INT 21H
      MOV AH,2
      MOV DL,13
      INT 21H
      
      LEA DX,ANSS
      MOV AH,9
      INT 21H    
      
      MOV AH,2
      MOV DL,49
      INT 21H
      
      
      SUB BL,65
      
      
      MOV AH,2
      MOV DL,BL
      ADD DL,48   
      INT 21H
      
      
      
      

      



 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
