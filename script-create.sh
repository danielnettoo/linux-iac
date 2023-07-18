#!/bin/bash

echo "Criação de Diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo "Criação de Grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Criação de Users..."


echo "Users ADM"
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -crypt senha123)-G GRP_ADM
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_ADM


echo "Users VEN"
useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_VEN


echo "Users SEC"
useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd regerio -c "Rogério" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_SEC


echo "Permissões dos Diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:root /publico

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "Processo finalizado..."


