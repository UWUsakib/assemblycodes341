.MODEL SMALL
 
.STACK 100H       

;Question
;Write instructions to do the following.
;a. Read a character, 
;and display it at the next position on the same line.

;b. Read an uppercase letter (omit error checking),
;and display it at the next position on the
;same line in lower case.

.DATA

; declare variables here  

.CODE

       MAIN PROC

; initialize DS

        MOV AX,@DATA       
        MOV DS,AX
 
; enter your code here

    ;a
    ;taking input   
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    ;NEXT POSITION
    
     MOV AH,2
     MOV DL,32
     INT 21H
     
     
     ;PRINT
     MOV AH,2
     MOV DL,BL
     INT 21H
               
               
               
     ;B
     MOV AH,1
     INT 21H
     MOV CL,AL
     ADD CL,32
     
     ;SPACE
     MOV AH,2
     MOV DL,32
     INT 21H
     
     ;PRINT
     MOV AH,2
     MOV DL,CL
     INT 21H
     

 

;exit to DOS
               
        MOV AX,4C00H
        INT 21H
    
    MAIN ENDP
END MAIN 3