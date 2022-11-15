#!/bin/bash

#Atualizar o sistema
echo "Atualizando o sistema. ."

apt-get update -y
apt-get upgrade -y

#instalar pacotes
echo "Instalando pacotes. ."

apt-get install apache2 -y
apt-get install unzip -y

#baixar arquivo do repositório
echo "Baixando e extraindo arquivos da aplicação. ."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip -d /var/www/html
mv /var/www/html/linux-site-dio-main/* /var/www/html -f
rm -rf /var/www/html/linux-site-dio-main
