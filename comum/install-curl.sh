yellow=`tput setaf 3`
reset=`tput sgr0`

echo "${yellow}\nInicio remover instalacoes antigas do curl ...${reset}\n"

    sudo apt-get remove curl
    sudo apt autoremove curl
    sudo apt-get remove --auto-remove curl

echo "${yellow}\nInicio instalacao curl ...${reset}\n"

    sudo apt install curl