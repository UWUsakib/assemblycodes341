.MODEL SMALL
 
.STACK 100H   


;QUESTION 2
;A]Put the sum of 1 + 4 + 7+ .. + 148 in AX.
                
.DATA

; declare variables here 
   

.CODE
MAIN PROC  
    
    SUM DW 0

; initialize DS                                          

MOV AX,@DATA
MOV DS,AX
 
; enter your code here  
       
       ;A
       
       MOV AX,0       
       MOV BX,1
       WHILE:
       CMP  BX,148
       JG END   
       ADD AX,BX
       ADD BX,3
       
       
       
       JMP WHILE
       
       END:    
       
       MOV CX,AX     
       
       
       
       
       ;B]b. Put the sum 100 + 95 + 90 + ... + 5 in a variable “sum”.
       
         
  
       MOV CX,100 
       
       FOR_LOOP:
       CMP CX,4
       JE END1
       ADD SUM,CX
       
       SUB CX,4
       
       LOOP FOR_LOOP
       
       
       
       
       END1:  
       
       MOV BX,SUM
       

       
         
          

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN

