.code small
.486
.data
	string db "dfs$%ed,23fg","as4&^sad wq;#3sd"
	i db 0
	j db 0
	mas db 52 dup (?)
	letter 'a'
.code
start:
mov ax,@data
mov ds,ax
xor cx,cx
mov cx,2
mov bh,'a'
mov al,26
xor si,si
xor ebx,ebx
lp1:
	mul al,i
	mov dx,cx
	mov cx,26
	mov j,0
	inter:
		mov di,j
		lea si,string
		xor bl,bl
			dow:
				cmp bh,byte ptr [si]
				jnz not-found
				inc bl
				notfound:
				inc si
				cmp byte ptr [si],0
				jz inter          
				jmp dow	
		mov mas[ax][di],bl
		inc di
		inc bh
		loop inter
	inc i
	mov cx,dx
	loop lp1
mov ah,4ch
int 21h
end start