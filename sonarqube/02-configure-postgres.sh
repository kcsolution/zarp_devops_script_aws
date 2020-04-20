yellow=`tput setaf 3`
reset=`tput sgr0`

echo  "\n${yellow}Criar usuario sonar${reset}"

    sudo su postgres

    sudo createuser sonar

    sudo psql

echo  "\n${yellow}Criar database sonar${reset}"

    ALTER USER sonar WITH ENCRYPTED password 'password';
    CREATE DATABASE sonar OWNER sonar;

echo  "\n${yellow}Fim configuracao sonar${reset}"

    sudo su freire

