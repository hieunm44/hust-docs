.Model Small
.Stack 100 
.Data
    MEG  DB 'Nhap mot chu cai thuong: $'  
    CRLF DB 13,10,'$' 
    KiTu DB ?
.Code
MAIN Proc  
    MOV AX,@Data
    MOV DS,AX
    
    LEA DX,MEG 
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    
    SUB AL,32
    MOV KiTu,AL 
    
    LEA DX,CRLF
    MOV AH,9
    INT 21H
      
    MOV DL,KiTu
    MOV AH,2
    INT 21H
    
    MOV AH,4CH
    INT 21H
MAIN Endp
    END MAIN
    