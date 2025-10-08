.Model Small  
.Stack 100
.Data 
    CRLF  DB 13,10,'$'
    Chuc  DB ?
    DonVi DB ?
.Code
MAIN Proc
    MOV AX,@Data
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    
    MOV BL,10
    XOR AH,AH
    DIV BL
    MOV Chuc,AL
    MOV DonVi,AH
    
    ADD Chuc,48
    ADD DonVi,48
    
    LEA DX,CRLF
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,Chuc
    INT 21H
    
    MOV DL,DonVi
    INT 21H
 MAIN Endp
    END MAIN
    