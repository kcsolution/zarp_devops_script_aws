# Nexus.zarp.tech

### Configurando o nexus no Jenkins


#### Adicionar nova credencial
```
adminnexus
```

#### Step necessário para realizar o upload no nexus
```
stage('nexus-upload') 
        {			
            steps {				
                nexusArtifactUploader (
                    nexusVersion: 'nexus3',
                    protocol: 'https',
                    nexusUrl: 'nexus.zarp.tech',
                    repository: 'devops',
                    credentialsId: 'adminnexus',
                    version: "${versao}",
                    groupId: "testes-configuracao-jenkins-nexus",
                    artifacts: [
                        [artifactId: "${applicationName}",
                        type: 'zip',
                        classifier: '',                        
                        file: "./${applicationName}.zip"]
                    ]
                )
            }
        }  
```