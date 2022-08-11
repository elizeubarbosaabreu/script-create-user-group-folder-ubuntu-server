#!/bin/bash
# Criando os grupos

echo "Criando os grupos GRP_ADM GRP_VEN e GRP_SEC"

groupadd GRP_ADM
groupadd GRP_VEN 
groupadd GRP_SEC

# Criando os usurios

echo "Criando os usuarios do grupo GRP_ADM com senha Senha123..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt  Senha123 ) -G GRP_ADM


echo "Criando os usuarios do grupo GRP_VEN ..."

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123 ) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

echo "Criando os usuarios do grupo GRP_VEN ..."

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC


# Criando os diretorios

cd /

echo "Criando os diretorios ..."

mkdir Publica Adm Ven Sec

echo "Mudando dono dos diretorios..."

chown root:GRP_ADM Adm
chown root:GRP_VEN Ven
chown root:GRP_SEC Sec

echo "Alterando Permissoes dos diretorios..."

chmod 777 Publica
chmod 770 Adm
chmod 770 Ven
chmod 770 Sec

echo "Ambiente criado com sucesso..."

