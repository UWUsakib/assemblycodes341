.MODEL SMALL
 
.STACK 100H  


;QUESTION 04
;
;The following algorithm may be used to carry out
; multiplication of two positive
;numbers M and N by repeated addition.
;Initialize a variable named product to 0
;Start the loop
;add M to product
;decrement N
;UNTIL N equals 0
;End the loop

.DATA

; declare variables here   
 PRODUCT DW 0

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here  
    MOV CX, 4  ,N
    MOV AX,1    ,M
    
    GHURO:  
    MUL CX
    ADD PRODUCT,AX
    CMP CX,0
    JE TATA
     

    
    
    LOOP GHURO   
    
    TATA:       
    MOV BX,PRODUCT

    

      
      
      
      
      



 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
