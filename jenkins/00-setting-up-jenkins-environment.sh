yellow=`tput setaf 3`
reset=`tput sgr0`

echo  "\n${yellow}Inicio step 01 - instalar git${reset}"

    sudo ./01-install-git.sh

echo  "\n${yellow}Fim step-01 - instalar git${reset}"
echo  "\n${yellow}Inicio step-02-install-jenkins-sh${reset}"

    sudo ./02-install-jenkins.sh

echo  "\n${yellow}Fim step-02-install-jenkins-sh${reset}"
echo  "\n${yellow}Inicio step-03-install curl and python${reset}"

    sudo ../general/install-curl.sh
    sudo ../general/install-python.sh

echo  "\n${yellow}Fim step3 -install curl and python${reset}"
echo  "\n${yellow}Inicio step-04-jenkins-plugins-batch-install.sh${reset}"

    sudo ./04-jenkins-plugins-batch-install.sh -p ./05-jenkins-plugins-list.sh --plugindir /var/lib/jenkins/plugins

echo  "\n${yellow}Fim step-04-jenkins-plugins-batch-install.sh${reset}"
echo  "\n${yellow}Inicio step-06-uninstall-python${reset}"

    sudo ../general/uninstall-python.sh

echo "${yellow}\nFim 06-uninstall0python ...${reset}\n"
echo  "\n${yellow}Inicio docker \ 01-install-docker${reset}"
    
    sudo ../docker/01-install-docker.sh

echo  "\n${yellow}Fim docker \ 01-install-docker${reset}"

    sudo ./07-versions.sh

echo "${yellow}\n\nFIM INSTALACAO AMBIENTE JENKINS${reset}\n"

echo "${yellow}\nPROXIMO PASSO - Acessar http://JENKINS_SERVER:8080 para configurar o ambiente JENKINS.${reset}\n"