# SONARQUBE

#### Configurando o ambiente sonar

## Passo 1 - Seguir os steps abaixo

- baixar os arquivos deste repositorio
- navegar até o diretorio sonarqube

##### Passo 2 - Adicionar permissão para execução dos scripts
```
chmod +x *.sh
```

##### Passo 3 - Executar o script 00-install-sonarqube.sh

```
yes | sudo ./00-install-sonarqube.sh
```

#### Passo 4 - Configurar postgress

```
    sudo -u postgres psql postgres
    sudo createuser sonar
    sudo psql

    ALTER USER sonar WITH ENCRYPTED password 'password';
    CREATE DATABASE sonar OWNER sonar;

    #exit sudo su
```

#### Passo 5 - INSTALAR SONAR

```
yes | sudo ./03-install-sonar.sh
```

#### Passo 6 - Configurar SONAR

```
sudo nano /opt/sonarqube/bin/linux-x86-64/sonar.sh
```

- Alterar:

```
RUN_AS_USER=sonar
```