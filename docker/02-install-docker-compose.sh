yellow=`tput setaf 3`
reset=`tput sgr0`

echo  "\n${yellow}Inicio install docker-compose ...${reset}"

    sudo ../general/install-curl.sh

    sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

    sudo chmod +x /usr/local/bin/docker-compose

    docker-compose --version

echo  "\n${yellow}Fim install docker-compose ...${reset}"    