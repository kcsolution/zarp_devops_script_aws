yellow=`tput setaf 3`
reset=`tput sgr0`

echo  "\n${yellow}Inicio install docker-compose${reset}"
    
    sudo ../docker/02-install-docker-compose.sh

echo  "\n${yellow}Fim install docker-compose${reset}"

echo  "\n${yellow}Inicio install docker${reset}"
    
    sudo ../docker/01-install-docker.sh

echo  "\n${yellow}Fim install docker${reset}"

echo "\n${yellow}Inicio docker compose docker-compose.yml${reset}"

    sudo sysctl -w vm.max_map_count=262144

    sudo docker-compose up -d

echo "\n${yellow}Fim  docker compose docker-compose.yml${reset}"

echo "\n\n${yellow}Acesse o sonar em http://SEU_SERVER_SONAR:9000${reset}"