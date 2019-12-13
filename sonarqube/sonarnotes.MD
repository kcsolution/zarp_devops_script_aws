# SONARQUBE

### executar o compose
```
docker-compose up -d
```

# Pós instalacao
- gerar token
- instalar plugins sonar no jenkins
- atribuir token ao jenkins ( globaltools adicionar sonar token )
- configurar webhook no sonar apontando para o jenknis

## Importante 
- O sonar usa banco de dados. 
- O compose neste diretorio utiliza postgres e volumes para realizar o backup.
- Estudar melhor forma de controlar/gerenciar o backup do sonar
