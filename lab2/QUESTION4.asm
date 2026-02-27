.MODEL SMALL
 
.STACK 100H       

;Question 4
;Read an uppercase letter (omit error checking),
;and display it at the next position on the next
;line in lower case.
;same line in lower case.

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
        MOV BL,AL  
        SUB BL,32
        
        ;POSITIONING
        MOV AH,2
        MOV DL,32 
        INT 21H
        MOV AH,2
        MOV DL,10
        INT 21H
        
        ;PRINT
        MOV AH,2
        MOV DL,BL
        INT 21H
        
        
        

 

;exit to DOS
               
        MOV AX,4C00H
        INT 21H
    
    MAIN ENDP
END MAIN 3