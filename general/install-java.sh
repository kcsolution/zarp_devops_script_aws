yellow=`tput setaf 3`
reset=`tput sgr0`

echo  "\n${yellow}Removendo versoes antigas do Java ...${reset}"

    sudo apt-get remove default-jre
    sudo apt autoremove default-jre
    sudo apt-get remove --auto-remove default-jre

echo  "\n${yellow}Inicio instalacao Java ...${reset}"

    sudo apt update    
    sudo apt install default-jre