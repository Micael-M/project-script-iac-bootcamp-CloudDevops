#!/bin/bash

echo "Crio diretórios..."

mkdir /publico
mkdir /adm
mkdir /vendas
mkdir /sec

echo "Diretórios criados!"

echo "########################"

echo "Crio grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VENDAS
groupadd GRP_SEC

echo "Grupos criados!"

echo "########################"

echo "Crio usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joão -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VENDAS
useradd sebastiana -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VENDAS
useradd roberto -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VENDAS

useradd josefina -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Especifico permissões aos diretórios..."

chown ubuntu:GRP_ADM /adm
chown ubuntu:GRP_VENDAS /vendas
chown ubuntu:GRP_SEC /sec

chmod 770 /adm
chmod 770 /vendas
chmod 770 /sec
chmod 777 /publico

echo "Finalizo!"
