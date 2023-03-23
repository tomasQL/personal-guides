#	NeoVim 

## **Config**

En el archivo ***init.vim*** dentro de la carpeta nvim en *home/.config*  

	set runtimepath^=~/.vim runtimepath+=~/.vim/after  
	let &packpath=&runtimepath  
	source $HOME/.vimrc  
  
Luego, en la carpeta $HOME, creamos un archivo .vimrc donde colocaremos
nuestra configuracion de plugins y cosas.

Salir jaja xD | :q   
Forzar salir sin guardar cambios | :q!  

```
|	H 	|  	J 	| 	K	|	L 	|
   left	   down	   up	  right 

Derecha comienzo palabras u objetos
 w 	|  b  -> contrario 

 mover al final palabras derecha
 	e 	

modo normal -> modo insert (escribir inline)
	i | salir con doble esc

editar/insertar al final de una linea
	shift + a 
editar con i coloca el cursor antes de la letra
con a cursor en edicion despues de la letra

Eliminar  |  Guardar			|   
	x 			normal.mode
				:w (w de write)
				:wq guarda y cierra
```
<hr>

## **Plug-ins**
```
Easymotion plug-in
	space+s , then type the character for search

NERDTree plug-in
	space+nt , abre el panel tree de folders.
	dentro de nt, con m abrimos el menu
```

<hr>

## **Links y referencias**
