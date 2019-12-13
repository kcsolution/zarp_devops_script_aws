# Instalando o Docker (ubuntu 18.04)

### Pre-requisitos
1. Ubuntu 18.04 Instance

## Passo a passo

#### Primeiro, atualize sua lista atual de pacotes:
```
sudo apt update
```

#### Em seguida, instale alguns pacotes de pré-requisitos que permitem que o apt utilize pacotes via HTTPS:
```
sudo apt install apt-transport-https ca-certificates curl software-properties-common
```

#### Então adicione a chave GPG para o repositório oficial do Docker em seu sistema:
```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```

#### Adicione o repositório do Docker às fontes do APT:
```
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
```

#### A seguir, atualize o banco de dados de pacotes com os pacotes Docker do repositório recém adicionado:
```
sudo apt update
```

#### Certifique-se de que você irá instalar a partir do repositório do Docker em vez do repositório padrão do Ubuntu:
```
apt-cache policy docker-ce
```

#### Finalmente, instale o Docker:
```
sudo apt install docker-ce
```

### Verificando se a instalação está OK
```
sudo systemctl status docker
```

## Pós instalação

#### Adicionar o usuario corrente ao grupo do docker
```
sudo usermod -aG docker ${USER}
```
