## Executar imagem do jenkins

#### Para o pipeline da zs, o jenkins está sendo instalado manualmente em uma maquina linux

```
docker run -p 8080:8080 -p 50000:50000 -v /var/jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -d --name jenkins jenkins-docker
```
