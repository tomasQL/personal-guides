#	NeoVim 

## **Config**

En el archivo ***init.vim*** dentro de la carpeta nvim en *home/.config*  

	set runtimepath^=~/.vim runtimepath+=~/.vim/after  
	let &packpath=&runtimepath  
	source $HOME/.vimrc  
  
Luego, en la carpeta $HOME, creamos un archivo .vimrc donde colocaremos
nuestra configuracion de plugins y cosas.

:h rtp Opens the runtime path on Neovim


## Comandos y como salir de vim xd
Salir | :q   
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

Bash customization:  
* Pure Line https://github.com/chris-marsh/pureline 
* Powerline https://github.com/powerline/powerline

Icons:  
https://github.com/ryanoasis/vim-devicons


Themes:   
* gruvbox https://github.com/morhetz/gruvbox
* monokai https://github.com/tanvirtin/monokai.nvim
* dracula https://draculatheme.com/vim
* tokyonight https://github.com/folke/tokyonight.nvim
* catppuccin https://github.com/catppuccin/nvim#special-integrations
* tender https://github.com/jacoborus/tender.vim#terminal-themes
* moonfly https://github.com/bluz71/vim-moonfly-colors

Colores  
https://www.ditig.com/256-colors-cheat-sheet