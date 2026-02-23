.MODEL SMALL
 
.STACK 100H       

;Question2  

;Perform addition/subtraction/division/multiplication
;by taking inputs from the user.
;Note: Display appropriate messages when 
;taking input and showing the output.


.DATA

; declare variables here 
       ADDR DB  "ADDITION$"
       ADDA DB  "A $"
       ADDB DB  "B $"
       ADDAN DW "ANSWER: $"            
                  

.CODE

       MAIN PROC

; initialize DS

        MOV AX,@DATA
        MOV DS,AX
 
; enter your code here
        
          
         ;ADD
         LEA DX, ADDR
         MOV AH,9
         INT 21H  
         
         ;NEWLINE
         MOV AH, 2
         MOV DL, 10
         INT 21H
         MOV AH,2
         MOV DL,13
         INT 21H
         
         ;A
         LEA DX,ADDA
         MOV AH,9
         INT 21H
                 
         ;AINT
         MOV AH,1
         INT 21H
         MOV BL,AL  ;BL
         SUB BL,48
         
         ;NEWLINE
         MOV AH,2
         MOV DL,10
         INT 21H
         MOV AH,2
         MOV DL,13
         INT 21H
                 
         ;B
         LEA DX,ADDB
         MOV AH,9
         INT 21H
         
         ;BINT
         MOV AH,1
         INT 21H
         MOV CL,AL
         SUB CL,48
         
         ;CALC
         ADD BL,CL  

         
         
         ;OUTPUTSHOWLINE
         MOV AH,2
         MOV DL,10
         INT 21H
         MOV AH,2
         MOV DL,13
         INT 21H
         
                 
         LEA DX, ADDAN
         MOV AH,9
         INT 21H
         
         ;OUTPUT 
         MOV AH,2
         MOV DL,BL 
         ADD DL,48
         INT 21H
         
         
         
         
         
         
         
          
         
         

 

;exit to DOS
               
        MOV AX,4C00H
        INT 21H
    
    MAIN ENDP
END MAIN      


