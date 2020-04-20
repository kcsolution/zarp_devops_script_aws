yellow=`tput setaf 3`
reset=`tput sgr0`

echo  "\n${yellow}Inicio remover instalacoes antigas postgresSql${reset}"

    sudo apt-get remove postgresql
    sudo apt autoremove postgresql
    sudo apt-get remove --auto-remove postgresql

    sudo apt-get remove postgresql postgresql-contrib
    sudo apt autoremove postgresql postgresql-contrib
    sudo apt-get remove --auto-remove postgresql postgresql-contrib

echo  "\n${yellow}Fim remover instalacoes antigas postgresSql${reset}"

echo  "\n${yellow}Inicio install postgresSql${reset}"

    sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
    wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | sudo apt-key add -

    sudo apt-get update -y
    sudo apt-get install postgresql postgresql-contrib

echo  "\n${yellow}Fim install postgresSql${reset}"