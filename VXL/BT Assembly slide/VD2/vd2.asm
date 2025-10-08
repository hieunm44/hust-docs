.Model Small
.Stack 100 
.Data
    MEG1 DB 'Nhap mot so he 2: $'
    MEG2 DB 13,10,'Noi dung thanh ghi BX la: $'   

.Code
MAIN Proc  
    MOV AX,@Data
    MOV DS,AX
    
    LEA DX,MEG1
    MOV AH,9
    INT 21H
    
    XOR BX,BX
    MOV AH,1
    LAP: INT 21H
         CMP AL,13
         JE TIEP
         SUB AL,48
         SHL BL,1
         OR BL,AL
         JMP LAP    
    TIEP: LEA DX,MEG2
          MOV AH,9
          INT 21H
          MOV CX,16
          MOV AH,2    
    HIEN: XOR DL,DL
          ROL BX,1
          ADC DL,48
          INT 21H
          LOOP HIEN 
    
    MOV AH,4CH
    INT 21H
MAIN Endp
    END MAIN
    