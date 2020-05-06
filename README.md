# Docker/Jenkins

#### PIPELINE CONSTRUÇÃO ...

![alt text](imagens/jenkins_pipeline.png "pipeline desenvolvido até o momento.")

#### Repositorio utilizado para guardar os arquivos de configuracao da esteira devops da ZARP

#### Atualmente a esteira devops da ZS conta com as seguintes tecnologias

- Git
- Jenkins
- SonarQube
- Nexus
- GoogleChat


#### O QUE ESTÁ PRONTO

- Scripts para criação automatizada do ambiente jenkins (com plugins)
- Scripts para criação automatizada do ambiente sonarqube
- Integração entre git/jenkins/sonar
- Slave windows (com windows service para conecção automatica)
- Pipeline de exemplo para projetos .NET (utilizando cake)
- Continuos Integration (pacote finalizando no nexus)

#### O QUE FALTA

- Configurar smpt no Jenkins ( por enquanto enviando para mailtrap.io)
- Configurar integração entre Jenkins e GoogleChat para envio de mensagens de quebra de build, etc ...
- Dockerizar o artefato gerado no build do passo anterior
- Gerar imagem e publicar no Sonar Registry
- Poc Pipeline Continuos Delivery

