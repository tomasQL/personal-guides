# **Docker for dev**

```
sudo pacman -S docker

sudo systemctl start docker.service

sudo systemctl enable docker.service
```

Normalmente las operaciones se hacen a nivel root de usuario.

## **Container management**

    docker ps       : list the containers that are still running + -a 
                      containers stopped
    docker logs     : logs of a container even stoppeds
    docker inspect  : details about running or stopped container
    docker stop     : stop a container
    docker rm       : deletes a container  

Un container parado, ocupa espacio, por lo que utilizaremos docker rm para
reclamar dicho espacio.


- Debemos entender que docker nos abre un mundo de posibilidaes gracias 
a la lógica del single-use computer.
Es tan sencillo como crear y tirar  la basura el "computador" que estamos
creando para nuestro propósito.  


```
docker container prune -f
```
* Comando para eliminar todos los containers DETENIDOS a la vez confimando 
la operación con -f
<hr>

## **Long lived-container**

Como observación, siempre que pensamos en containers de docker, hay que
intentar no tenerlos a "corriendo" a largo plazo.
Debemos intentar asegurarnos de que nuestros containers sean stateless y 
no stateful. Esto es lo que nos permite la rápida recuperación y alta 
escala.

Un server container es: 
- long-lived 
- listen for incoming network connections

```
docker run ... -d or -detach
```
Esto nos permite correr containers y poder volver a usar la CLI.
Por ejemplo:
```
docker run -d alpine ping www.docker.com
```
run command returns ID of the container 


Cuando queremos ver ciertos logs y en los casos de mucha actividad
que pueda tener un container podemos limitar la visualización
de la info mediante *-from* *-until* *-tail*
```
docker logs --since 10s 789b
```
Esto nos muestra los 10seg mas recientes de logs corriendo en nuestro 
container.
```
docker stop 789b
docker rm 789b
docker ps -a
```   

<hr>
<br>

## **Listenning for Incoming Network Connections**

By default, a container runs in isolation and as such, it doesn't listen
for incoming conecctions. We need to explicity open a port 
on the host machine and map it to a port on the container.

*i.e*



