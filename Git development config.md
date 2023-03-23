# Git development config

## Personal Guide

> @tomasQL <https://github.com/tomasQL>  
> Fecha de creación Jueves 01 de septiembre del 2022.

#### Curso Udemy Fernando Herrera - GIT+GitHub: Todo un sistema de control de versiones de cero

## 1. Conceptos fundamentales

    git help nombre_comando    

Nos lleva a la documentación del comando elegido.  

**Configuración global del usuario**

    git config --global user.name "tomasQL"     
    git config --global user.email "tomasgaticagomez@gmail.com"

Consultar los usuarios registrados.

    git config --global -e    

Entorno linux (Arch-MANJARO)  
Setear idioma de español al inglés.    

    alias git='LANG=en_US git'

### **Iniciando repositorios**

Dentro de la carpetra mediante CLI ejecutamos

    git init // Inicializa el repositorio  
    git status 
    git add . //  Añade todos los archvos de la carpeta.
    git commit -m "Primer commit" //  Comprometerlos - realizar los cambios del snapshot

**Sobre la inicialización de repositorios**

Una vez que hemos inicializado el repo y en general, cada vez que tenemos archivos nuevos *untracked* debemos usara si o si el formato extendido de 
git add . y git commit -m "MENSAJE". Una vez que el seguimiento de git fue aplicado podemos utilizar en dichos archivos o carpetas los alias de git.

<br>

### **Stage y Commit**

En git existen dos conceptos fundamentales, el stage y el commit.
El stage es el momento donde preparamos los archivos para ser comprometidos.  

# 

Para añadir filtrando por tipos de archivos  
git add *.tipo_archivo   
*i.e*

    git add *.py             //  añade todos los archivos desde el root con extensión . py en subdirectorios
    git add carpeta/          //  añade la carpeta
    git add carpeta/*.js       //  añade los archivos js de la carpeta llamada carpeta

Para remover un archivo del seguimiento

    git reset .DS_Store //    archivo de OSX, el archivo ya no es parte de la snapshot

# 

ALIAS shortcuts in GIT CLI

git status --short             //  visualiza el status de manera resumida 

git config --global alias.s "status --short"

    ALIAS Popular FH git config --global alias.lg "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) % (dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
    
    git config --global alias.s "status --short"

### **Algunos problemas conocidos**

Error Warning LF CRLF  

    git config core.autocrlf true
