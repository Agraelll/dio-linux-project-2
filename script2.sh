#!/bin/bash

echo "Atualizando o sevidor"
apt-get update
apt-get upgrade

echo "Instalando apache2"
apt-get install apache2 -y

echo "Instalando unzip"
apt-get install unzip -y

echo "Instalando git"
apt-get install git -y

echo "Baixando e copiando os arquivos da aplicação"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactar aplicação"
unzip main.zip

echo "Copiar aplicação para o servidor"
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Finalizado"