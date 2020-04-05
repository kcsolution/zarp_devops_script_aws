color=`tput setaf 205`
reset=`tput sgr0`

echo "${color}"

sudo git --version 
echo " "

sudo docker --version 
echo " "

sudo curl --version 
echo " "

sudo java --version 

echo " "

echo "${reset}"

sudo systemctl status jenkins

