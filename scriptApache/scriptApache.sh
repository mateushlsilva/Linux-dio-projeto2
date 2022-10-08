#!/bin/bash

echo "Atualizando o sistema ..."
sudo apt-get update -y > /dev/null ;sudo apt-get upgrade -y > /dev/null
echo "Instalando o Apache ..."
sleep 3
sudo apt install apache2 -y
clear
echo "Instalando o unzip ..."
sudo apt-get install unzip -y > /dev/null
echo "Preparando o ambiente ...."
cd /tmp; wget -c https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip; cp -R linux-site-dio-main/* /var/www/html/
clear
echo "Servidor esta pronto!"



