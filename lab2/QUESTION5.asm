.MODEL SMALL
 
.STACK 100H       

;Question 5
;(a) display a "?"
;(b) read two decimal digits whose sum is less than 10,
;(c) display them and their sum on the next line, 
   ; with an appropriate message.

.DATA

; declare variables here  

QS DB '?$'   
NN DB 'TOTAL: $'

.CODE

       MAIN PROC

; initialize DS

        MOV AX,@DATA       
        MOV DS,AX
 
; enter your code here

       ;A
       
       MOV AH,2
       MOV DL,33
       INT 21H 
       
       
       LEA DX,QS
       MOV AH,9
       INT 21H  
       

       ;B    
       MOV AH,1
       INT 21H
       MOV BL,AL   
       SUB BL,48
       
           
       MOV AH,1
       INT 21H
       MOV CL,AL 
       SUB BL,48

       
      
              
       ;LINE
       MOV AH,2
       MOV DL,10
       INT 21H
       MOV AH,2
       MOV DL,13
       INT 21H       
       
       
       LEA DX,NN
       MOV AH,9
       INT 21H
       
       ADD BL,CL  
 
       
       ;C
       MOV AH,2
       MOV DL,BL 
       ADD DL,48
       INT 21H
       
       
       
       
           
        
       

 

;exit to DOS
               
        MOV AX,4C00H
        INT 21H
    
    MAIN ENDP
END MAIN 3