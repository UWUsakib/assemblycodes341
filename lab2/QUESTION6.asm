.MODEL SMALL
 
.STACK 100H       

;Question 6
;Write a program to:
;(a) prompt the user, 
;(b) read first, middle, 
;and last initials of a person's name, and then display
;them down the left margin.

.DATA

; declare variables here  
    LINE DW 'ENTER THREE INITIALS:  $'


.CODE

       MAIN PROC

; initialize DS

        MOV AX,@DATA       
        MOV DS,AX
 
; enter your code here
           
         ;A
         LEA DX,LINE
         MOV AH,9
         INT 21H
         
         MOV AH,1
         INT 21H         ;FIRST
         MOV BL,AL      
         
         
         
         MOV AH,1
         INT 21H         ;SECOND
         MOV CL,AL
                  
                  
         MOV AH,1
         INT 21H         ;THIRD
         MOV BH,AL
                
         
         ;PRINTING  
         MOV AH,2
         MOV DL,10
         INT 21H
         MOV AH,2
         MOV DL,13
         INT 21H
         
         MOV AH,2
         MOV DL,BL
         INT 21H 
         
         
         MOV AH,2
         MOV DL,10
         INT 21H
         MOV AH,2
         MOV DL,13
         INT 21H  
         
         
         MOV AH,2
         MOV DL,CL
         INT 21H 
                   
         MOV AH,2
         MOV DL,10
         INT 21H
         MOV AH,2
         MOV DL,13
         INT 21H          
         
         MOV AH,2
         MOV DL,BH
         INT 21H
         

       
           
                      
       

 

;exit to DOS
               
        MOV AX,4C00H
        INT 21H
    
    MAIN ENDP
END MAIN 3