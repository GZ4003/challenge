# ANGULAR-APP
1-Clonar el repositorio:

git clone <URL_DEL_REPOSITORIO>
cd <NOMBRE_DEL_DIRECTORIO>

2-Una vez en el directorio creamos los ficheros que usaremos en este caso usaremos como microservicio NGINX por lo tanto creamos un Dockerfile y nginx.conf

3-Construir la imagen Docker:

```bash
docker build -t angularapp .
```

3-Ejecutar el contenedor Docker localmente:

```bash
docker run -p [nombre_del_container]
```

5-Ahora vemos si funciona la imagen yendo al puerto que colocamos antes para usar nginx 

*Abre un navegador web y navega a http://localhost:8080*  
*Deberías ver la aplicación funcionando correctamente.*
