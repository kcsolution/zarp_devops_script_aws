yellow=`tput setaf 3`
reset=`tput sgr0`

echo "${yellow}\nInicio remover instalacoes antigas do python ...${reset}\n"

    sudo apt-get remove python
    sudo apt autoremove python
    sudo apt-get remove --auto-remove python

echo "${yellow}\nInicio instalacao python ...${reset}\n"

    sudo apt update
    sudo apt install python

    python --version    