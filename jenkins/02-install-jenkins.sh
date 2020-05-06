yellow=`tput setaf 3`
reset=`tput sgr0`

    sudo ../comum/install-java.sh

echo "\n"
java --version
echo "\n"

echo  "\n${yellow}Removendo versoes antigas do Jenkins ...${reset}"

    sudo apt-get remove jenkins
    sudo apt autoremove jenkins
    sudo apt-get remove --auto-remove jenkins

echo  "\n${yellow}Inicio instalacao Jenkins ...${reset}"

    sudo wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
    sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

    sudo apt update
    sudo apt install jenkins

    sudo systemctl start jenkins
    sudo systemctl status jenkins