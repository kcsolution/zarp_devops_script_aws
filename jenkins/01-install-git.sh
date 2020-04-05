yellow=`tput setaf 3`
reset=`tput sgr0`

echo "${yellow}Inicio remover instalacoes antigas do git ...${reset}\n"
    sudo apt-get remove git
    sudo apt-get remove --auto-remove git

echo "\n${yellow}Fim instalacoes antigas do git ...${reset}\n"
echo "\n${yellow}Inicio instalacao  git ...${reset}\n"

    sudo apt update
    sudo apt install git

    git --version