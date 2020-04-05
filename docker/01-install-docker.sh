yellow=`tput setaf 3`
reset=`tput sgr0`

echo  "\n${yellow}Removendo versoes antigas do Docker ...${reset}"

    sudo apt-get remove docker-ce
    sudo apt autoremove docker-ce
    sudo apt-get remove --auto-remove docker-ce

echo  "\n${yellow}Inicio instalacao Docker ...${reset}"

    sudo apt update

    sudo apt install apt-transport-https ca-certificates curl software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

    sudo apt update
    apt-cache policy docker-ce
    sudo apt install docker-ce

echo  "\n${yellow}Adicionando usuarios ao grupo do Docker ...${reset}"

    sudo usermod -aG docker ${USER}
    sudo usermod -aG docker ec2-user
    sudo usermod -aG docker jenkins

echo  "\n${yellow}Fim usuarios ao grupo do Docker ...${reset}"    