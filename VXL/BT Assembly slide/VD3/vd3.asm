.Model Small
.Stack 100 
.Data
    MEG DB 'Nhap day so: $'
    KiTu DB ?     
    CRLD DB 13,10,'$' 
    SoKiTu DW ?
    Chuoi DB ?
          DB '$'    
.Code
MAIN Proc  
    MOV AX,@Data
    MOV DS,AX
    
    LEA DX,MEG
    MOV AH,9
    INT 21H
    
    XOR DX,DX
    XOR CX,CX 
    MOV [DI],0    
    LEA DI,Chuoi
    NHAP:   MOV BL,10            
            MOV AH,1
            INT 21H
            CMP AL,13
            JE THOAT
            CMP AL,32
            JE NHAP1
            SUB AL,48      
            MOV KiTu,AL
              
            
            MOV AL,[DI]
            MUL BL
            ADD AL,KiTu
            MOV [DI],AL
            
            JMP NHAP
    
    NHAP1:  INC DI
            MOV [DI],0
            INC DX
            JMP NHAP
    THOAT:  MOV SoKiTu,DX
    LAP:    LEA DI,Chuoi 
            MOV CX,DX
            MOV AL,[DI]
            LEA SI,Chuoi
    TIMMAX: INC SI
            CMP [SI],AL
            JNG TIEP
            MOV DI,SI
            MOV AL,[DI]
    TIEP:   LOOP TIMMAX
            CALL DOICHO
            DEC DX
            JNZ LAP 
    
    LEA DX,CRLD
    MOV AH,9
    INT 21H
    
    INC SoKiTu
    MOV CX,SoKiTu 
    LEA DI,Chuoi
    ADD DI,CX
    DEC DI
    MOV BX,10
    CHON: XOR AX,AX
          MOV AL,[DI]
    CHIA: XOR DX,DX
          DIV BX
          PUSH DX
          CMP AX,0
          JNE CHIA
          MOV AX,32
          PUSH AX
          DEC DI
          LOOP CHON
    
    MOV CX,SoKiTu
    MOV AX,CX
    MOV BX,3
    MUL BX
    MOV CX,AX
      
    MOV AH,2       
    HIEN: POP DX
          CMP DX,32
          JE RA
          ADD DX,48
    RA:   INT 21H
          LOOP HIEN
          
    
    MOV AH,4CH
    INT 21H
MAIN Endp

DOICHO Proc
    PUSH AX
    MOV AL,[SI]
    XCHG AL,[DI]
    MOV [SI],AL
    POP AX
    RET
DOICHO Endp

    END MAIN
    