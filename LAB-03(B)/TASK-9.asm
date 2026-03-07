.MODEL SMALL
 
.STACK 100H 



.DATA

; declare variables here

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here 

       MOV AH,1
       INT 21H
       MOV CL,AL
       SUB CL,48       
       
       MOV CH,0
       MOV BH,1   
   
       
       LOOP1:  
       MOV BL,1
       CMP CX,0
       JE END
       JNE LOOP2   
       
       LOOP2: 
    
       
       CMP BL,BH
       JG OUT1
       MOV AH,2
       MOV DL,BL
       ADD DL,48 
       INT 21H
       
       INC BL
       JMP LOOP2
       
       
       
       
       OUT1:
       INC BH 
       MOV AH,2
       MOV DL,10
       INT 21H 
       MOV AH,2
       MOV DL,13
       INT 21H
       LOOP LOOP1
       END:
       
       




 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
