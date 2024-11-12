#!/bin/bash

echo "=================================="
echo "Criando os diretórios..."
echo "......................."

mkdir ../../publico ../../adm ../../ven ../../sec

echo "Diretórios criados com sucesso!"
echo "=================================="
echo "Criando os grupos..."
echo "......................."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados com sucesso!"

echo "=================================="
echo "Criando os usuários..."
echo "......................."

useradd amanda -c "Amanda Exbiz" -s /bin/bash -p $(openssl passwd -6 123)
useradd carlos -c "Carlos Exbiz" -s /bin/bash -p $(openssl passwd -6 123)
useradd debora -c "Debora Exbiz" -s /bin/bash -p $(openssl passwd -6 123)
useradd flavio -c "Flavio Exbiz" -s /bin/bash -p $(openssl passwd -6 123)
useradd joao -c "João Exbiz" -s /bin/bash -p $(openssl passwd -6 123)
useradd lucas -c "Lucas Exbiz" -s /bin/bash -p $(openssl passwd -6 123)
useradd maria -c "Maria Exbiz" -s /bin/bash -p $(openssl passwd -6 123)
useradd roberto -c "Roberto Exbiz" -s /bin/bash -p $(openssl passwd -6 123)
useradd rogerio -c "Rogerio Exbiz" -s /bin/bash -p $(openssl passwd -6 123)

echo "Usuários criados com sucesso!"
echo "=================================="
echo "Tornando o root dono de todos os diretórios..."
echo "......................."

chown -R root ../../publico ../../adm ../../ven ../../sec

echo "Root dono de todos os diretórios com sucesso!"
echo "=================================="
echo "Fazendo a atribuição dos usuários a determinados grupos..."
echo "......................."

usermod -G GRP_ADM amanda
usermod -G GRP_ADM carlos
usermod -G GRP_ADM debora

usermod -G GRP_VEN flavio
usermod -G GRP_VEN joao
usermod -G GRP_VEN lucas

usermod -G GRP_SEC maria
usermod -G GRP_SEC roberto
usermod -G GRP_SEC rogerio

echo "Atribuição realizada com sucesso!"
echo "=================================="
echo "Tornando diretórios acessíveis de acordo com seus grupos"
echo "......................."

chown root:GRP_ADM ../../adm
chown root:GRP_SEC ../../sec
chown root:GRP_VEN ../../ven

chmod 770 -R ../../adm
chmod 770 -R ../../sec
chmod 770 -R ../../ven

echo "Diretórios acessíveis de acordo com seus grupos com sucesso!"
echo "=================================="
echo "Tornando o diretório público acessível para todos os usuários..."
echo "......................."

chmod 777 ../../publico

echo "Diretório tornado público com sucesso!"
echo "=================================="


