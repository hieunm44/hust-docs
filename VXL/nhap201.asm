.model small
.stack 100
.data
	msg1 db "Hay nhap vao mot chu cai thuong $"
	msg2 db 13,10,"Dang chu hoa cua chu cai vua nhap vao la:$"
	msg3 db 13,10,"Ma ascii duoi dang nhi phan la:$"
.code
main proc
	;khoi tao cho ds
	mov ax,@data
	mov ds,ax
	; hien thi msg1
	mov ah,9
	lea dx,msg1
	int 21h
	;nhap 1 ky tu su dung ham 1 cua ngat 21h
	;ma ascii cua ky tu vua nhap se duoc luu trong al
	mov ah,1
	int 21h
	mov bl,al ; cat tam ma ascii vao bl
	;hien thi msg2
	mov ah,9
	lea dx,msg2
	int 21h
	; hien thi ky tua vua nhap duoi dang chu hoa
	mov ah,2
	mov dl,bl
	sub dl,32; doi tu chu thuong sang chu hoa
	int 21h

	;hien thi ma ascii duoi dang nhi phan
	mov ah,9
	lea dx,msg3
	int 21h
	mov cx,8
	mov ah,2
lap: 	xor dl,dl
	shl bl,1
	adc dl,'0'
	int 21h
	
	loop lap
	;thoat ve dos
	mov ah,4ch
	int 21h
main endp
end main
