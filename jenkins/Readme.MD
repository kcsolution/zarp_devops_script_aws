# JENKINS INSTALATION

##  Passo a passo da instalação

#### First, add the repository key to the system:

```
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
```

#### When the key is added, the system will return OK. Next, append the Debian package repository address to the server’s sources.list:

```
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
```

#### When both of these are in place, run update so that apt will use the new repository:

```
sudo apt update
```

#### Finally, install Jenkins and its dependencies:

```
sudo apt install jenkins
```