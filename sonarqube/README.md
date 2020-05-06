# SONARQUBE

```
O ambiente SonarQube é composto de
```

- docker
- docker-compose
- sonar
- postgresSql

#### Iniciando o ambiente SonarQube

Para startar o ambiente sonarqube é necessário:

- baixar os scripts contidos nesse repositorio
- navegar via terminal até o diretorio sonarqube
- adicionar permissão de execução para os scripts ( chmod +x *.sh )
- executar o comando abaixo:

```
yes | sudo ./00-install-sonarqube.sh
```

#### Para testar é necessário navegar até 'http://SONARQUBE_SERVER:9000'

# Pós instalacao
- gerar token (sonarqube admin)
- atribuir token ao jenkins ( globaltools adicionar sonar token )
- configurar webhook no sonar apontando para o jenknis ( ip interno AWS )

## Importante 
- O sonar usa banco de dados. 
- O compose neste diretorio utiliza postgres e volumes para realizar o backup.
- Estudar melhor forma de controlar/gerenciar o backup do sonar
