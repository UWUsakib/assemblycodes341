.MODEL SMALL
 
.STACK 100H  
;;Write a program that will prompt the user to enter a 
;hex digit character ("0" ... "9"
;or "A" ... "F"), display it on the next line in decimal,
; and ask the user if he or she
;wants to do it again. If the user types "y" or "Y", 
;the program repeats; If the user
;types anything else, the program terminates. 
;If the user enters an illegal
;character, prompt the user to try again


.DATA

; declare variables here   
   TXT1 DB 'ENTER A HEX DIGIT: $'
   TXT2 DB 'IN DECIMAL IT IS: $;'
   TXT3 DB 'DO YOU WANT TO DO IT AGAIN? $'
   


.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here 
    
    
    
  



   YOLOOP:
   
   LEA DX,TXT1
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
   
   
   LEA DX, TXT2
   MOV AH,9
   INT 21H   
   
   CMP BL,64
   JG BORO  
   
   SUB BL,48  
   
   
   

   
   
   
   
   CMP BL,9
   JLE PRINTOP
   BORO:            
   SUB BL,65   
   
   MOV BH,1
         
            
            
            

   MOV AH,2
   MOV DL,BH
   ADD DL,48
   INT 21H
   
   MOV AH,2
   MOV DL,BL
   ADD DL,48
   INT 21H 
   
   
   
   MOV AH,2
   MOV DL,10
   INT 21H
   MOV AH,2
   MOV DL,13
   INT 21H   
   
   
   JMP QUES
   
   
   
   
   PRINTOP: 
   

   
   MOV AH,2
   MOV DL,BL
   ADD DL,48
   INT 21H  
   
   
   
   MOV AH,2
   MOV DL,10
   INT 21H
   MOV AH,2
   MOV DL,13
   INT 21H   
   JMP QUES  
   
  
    
   QUES:
   
   LEA DX, TXT3
   MOV AH,9
   INT 21H
   
   MOV CL,AL 
   
   MOV AH,1
   INT 21H
   
   
   MOV CL,AL 
   
   
   MOV AH,2
   MOV DL,10
   INT 21H
   MOV AH,2
   MOV DL,13
   INT 21H   
   
   
   CMP CL,89
   JE YOLOOP  
   
   CMP CL,121
   JE YOLOOP
   
   
   JMP TATA
   
   
   
   TATA:
    
   
   
    
   
   




 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
