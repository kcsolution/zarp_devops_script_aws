# CONFIGURANDO SLAVES JENKINS

## SLAVE WINDOWS

#### Habilitando comunicação TCP MASTER/SLAVE

```
Acessar Jenkins Global Secutiry
Marcar como FIXED a opção Agents / Tcp port for inbount agends
Configurar porta 50000 (garantir que porta está liberada no master para correta comunicação)
```

#### Criar Slave Windows

```
Acessar Manage Jenkins/Manage Nodes and Clounds
New Node (adicionar nome do nome conforme desejado) e marcar opcao Permanent Node
Remote root directory => C:\Jenkins
Launch method => Launth agent by connecting it to the master
```


#### Configurando Slave Windows

```
Acessar o slave criado no passo anterior.
Realizar o download do arquivo agent.jar (conforme descrito nas configuracoes do node)

Acessar o servidor do slave e copiar o arquivo acima para o caminho configurado no passo anterior ( C:\Jenkins)

De dentro so servidor:


Run from agent command line:

"Copiar o comando conforme mostra nas configuracoes do slave"
```

#### Configurando Auto Connect to Master ( WINDOWS SLAVE)
```
Acessar o servidor do slave
Acessar o diretorio configurado no passo anterior ( C:\JENKINS)
Criar um arquivo connect_jenkins_master.bat com o conteudo:

cd C:\JENKINS

# Importante - ALTERAR AQUI
#Run from agent command line:

#"Copiar o comando conforme mostra nas configuracoes do slave"

Criar um atalho em C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\connect_jenkins_master.bat

Esse arquivo .bat irá ser executado sempre que o windows startar, dessa forma, a maquina slave automaticamente já se conectará com o master do JENKINS.

```

