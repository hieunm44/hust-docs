.Model Small
.Stack 100
.Data
    MSG DB 13,10,'Nhap mot so$'
.Code
MAIN Proc    
    MOV AX,@Data
    MOV DS,AX
    NHAP: LEA DX,MSG
          MOV AH,9
          INT 21H
          
          MOV AH,1
          INT 21H
          
          CMP AL,'1'
          JL NHAP
          CMP AL,'9'
          JG NHAP
    
    XOR AH,AH      
    SUB AL,48
    MOV CL,AL
    DEC CL 
    LAP: MUL CX
         LOOP LAP
    
 
MAIN Endp
    END MAIN
