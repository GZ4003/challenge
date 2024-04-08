# ANGULAR-APP

*Puede visitar la applicación de forma online haciando click* [aquí](https://challenge-alpha-fawn.vercel.app/)

## Para empezar a trabajar con este repositorio se deben seguir los siguentes pasos:

### 1. Clonar el repositorio:

git clone <URL_DEL_REPOSITORIO>

### 2. Exposición de la aplicación como servicio mediante definición de Docker Compose.

#### Construir la imagen Docker y exponerla con Nginx:

```bash
docker-compose up --build
```
*Abre un navegador web y navega a http://localhost:8080*  
*Deberías ver la aplicación funcionando correctamente.*

### Exposición de la aplicación como servicio mediante definición de Kubernetes.

#### Crear espacio de trabajo
```bash
kubectl create namespace flask
```
#### Crear secreto con la credenciales de Docker Hub 
*Esto se hace para que Kubernetes pueda acceder a imagen a pesar que este publica*
```bash
kubectl create secret -n angular docker-registry angular-image \
    --docker-server=https://index.docker.io/v1/ \
    --docker-username= \
    --docker-password=
```
#### Desplegar la aplicación en Kubernetes:
```bash
helm install angularapp-deploy . -n angular -f values.yaml  --debug
```
 #### Verificar el estado del despliegue
 Esto mostrará el estado de los pods en tu clúster de Kubernetes. Espera hasta que el pod correspondiente al despliegue esté en estado Running.
 ```bash
kubectl get pods --namespace angular
```
#### Ver el listado de servicios 
 ```bash
kubectl get svc
```
#### Para acceder a la aplicación del cluster de Kubernetes (local)
 ```bash
minikube service angularapp-helm-chart -n angular
```
* Se debe seleccionar la segunda IP *
*Con estos pasos, deberías poder levantar la aplicación tanto localmente utilizando Docker para poder usar nginx como microservicio, y kubernetes Helm Chart para desplegarlo*
