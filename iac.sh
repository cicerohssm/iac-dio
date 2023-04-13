#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -c "Carlos Henrique" -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd maria -c "Maria Eduarda" -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd joao -c "João Batista" -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM

useradd debora -c "Debora Sousa" -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Silva" -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd roberto -c "Roberto Martins" -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_VEN

useradd josefina -c "Josefina Alves" -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_SEC
useradd amanda -c "Amanda Maria" -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_SEC
useradd rogerio -c "Rogerio Silva" -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_SEC

echo "Especificando permissões dos usuários aos Diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."
