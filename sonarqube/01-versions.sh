color=`tput setaf 205`
reset=`tput sgr0`

echo "${color}"

sudo docker --version 
echo " "

echo " "

echo "${reset}"

sudo systemctl status docker

