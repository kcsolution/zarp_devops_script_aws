yellow=`tput setaf 3`
reset=`tput sgr0`

echo  "\n${yellow}Removendo instalacoes antigas do sonar${reset}"

    sudo deluser sonar
    sudo rm -rf /opt/sonarqube
    sudo rm -rf ./sonarqube-6.7.6.zip

echo  "\n${yellow}Criar usuario sonar${reset}"

    sudo adduser sonar

echo  "\n${yellow}Inicio instalacao sonar${reset}"

    wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-6.7.6.zip

    unzip sonarqube-6.7.6.zip

    sudo cp -r sonarqube-6.7.6 /opt/sonarqube

    sudo chown -R sonar:sonar /opt/sonarqube

echo  "\n${yellow}Fim instalaacao sonar${reset}"