#!/bin/bash

echo "Subindo Diretórios"

mkdir /publico
mkdir /adm
mkdir /enf
mkdir /clin
mkdir /lab
mkdir /ti

echo "Subindo Grupos de Usuários"

groupadd GRP_ADM
groupadd GRP_ENF
groupadd GRP_CLIN
groupadd GRP_LAB
groupadd GRP_TI

echo "Adicionando os usuários"

useradd lbarbosa -m -s /bin/bash -p $(openssl passwd -crypt pass@worlduseradd lbarbosa -m -s /bin/bash -p $(openssl passwd -crypt pass@world) -G GRP_ADM
useradd amaira -m -s /bin/bash -p $(openssl passwd -crypt pass@worlduseradd lbarbosa -m -s /bin/bash -p $(openssl passwd -crypt pass@world) -G GRP_ADM

useradd aseni -m -s /bin/bash -p $(openssl passwd -crypt pass@worlduseradd lbarbosa -m -s /bin/bash -p $(openssl passwd -crypt pass@world) -G GRP_ENF

useradd flazarini -m -s /bin/bash -p $(openssl passwd -crypt pass@worlduseradd lbarbosa -m -s /bin/bash -p $(openssl passwd -crypt pass@world) -G GRP_LAB

useradd aparros -m -s /bin/bash -p $(openssl passwd -crypt pass@worlduseradd lbarbosa -m -s /bin/bash -p $(openssl passwd -crypt pass@world) -G GRP_CLIN
useradd mnaciff -m -s /bin/bash -p $(openssl passwd -crypt pass@worlduseradd lbarbosa -m -s /bin/bash -p $(openssl passwd -crypt pass@world) -G GRP_CLIN

echo "Relacionando usuários aos Grupos"
usermod augusto -G GRP_TI

echo "Pemissões de Diretórios"

chown root:GRP_ADM /adm
chown root:GRP_ENF /enf
chown root:GRP_CLIN /clin
chown root:GRP_LAB /clin
chown root:GRP_TI /ti

chmod 770 /adm
chmod 770 /enf
chmod 770 /clin
chmod 770 /lab
chmod 770 /ti
chmod 777 /publico

echo "Finalizado"
