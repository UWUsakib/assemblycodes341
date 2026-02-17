.MODEL SMALL
 
.STACK 100H       


;Qustion 7
;Perform the following arithmetic operations



.DATA

; declare variables here


.CODE

       MAIN PROC

; initialize DS

        MOV AX,@DATA
        MOV DS,AX
 
; enter your code here
        
        ;1) X * Y  
                            
        MOV   AX,5 
        MOV  CX,5
        MUL  CX         ;answer will be in  DX:AX
                                            ;(h:l)
                                        
       
                          

         

;exit to DOS
               
        MOV AX,4C00H
        INT 21H
    
    MAIN ENDP
END MAIN



