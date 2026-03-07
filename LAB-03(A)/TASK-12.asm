.MODEL SMALL
 
.STACK 100H   


;QUESTION 12
;Write a program that takes a digit as an input and outputs the following. If the digit is
;within 0-3, it prints “i”, 
;If it"s within 4-6, it prints “k”, 
;If it"s within 7-9, it prints “l” and
;if it"s 10, it prints “m”.
                
                
.DATA

; declare variables here 
   OUT1 DB 'MAX: $'
   OUT2 DB 'MIN: $'
   

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here  

          MOV AH,1
          INT 21H
          
          MOV BL,AL 
          SUB BL,48 
      
                              ;SPACE FOR CL SPACE ER ASCII THAKLE BL NIYE KAJ CL E KONO INPUT THAKLE M DIRECT PRINT
          
        
          CMP BL,9
          JG PRINTM 
          JMP NET
          
          PRINTM:
            MOV AH,2
            MOV DL,109
            INT 21H
            JMP TATA   
            
            
          NET:  
          CMP BL,3
          JLE TINCHOTO
          JMP NET1
          
          TINCHOTO:   
           MOV AH,2
            MOV DL,105
            INT 21H
            JMP TATA
              
          NET1: 
          CMP BL,4
          JGE CHARBORO
          
          CHARBORO:
          CMP BL,6
          JLE PRINTK
          MOV AH,2
          MOV DL,108
          INT 21H
          JMP TATA 
          
          PRINTK:
          MOV AH,2
            MOV DL,107
            INT 21H
            JMP TATA 
           
            
                   
                    
          TATA:
          
          

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN

