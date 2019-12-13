# Expor porta do docker para ser controlado remotamente

### Criar diretorio contendo o arquivo docker.service.d
```
sudo mkdir -p /etc/systemd/system/docker.service.d/
```

### Criar arquivo override.conf
```
sudo vi /etc/systemd/system/docker.service.d/override.conf
```

### Colar o conteudo abaixo no arquivo override.conf
```
[Service]
ExecStart=
ExecStart=/usr/bin/dockerd -H fd:// -H tcp://0.0.0.0:2376
```

### Reiniciar o servico do docker
```
sudo systemctl daemon-reload
sudo systemctl restart docker.service
```
