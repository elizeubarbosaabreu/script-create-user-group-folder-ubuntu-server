# Script para criação de diretórios, usuários e grupos em servidores Linux como Ubuntu Server

Script desenvolvido como atividade para o bootcamp Linux Experience da [dio.me](dio.me) com o grande mestre [Denilson Bonatti](https://github.com/denilsonbonatti)

## Como usar o Script

No terminal entre como usuário root com o comando abaixo:

```bash
sudo su
```
Instale o git (se já possui pode ignorar):

```bash
apt install git -y
```
Clone esse repositório:

```bash
git clone https://github.com/elizeubarbosaabreu/script-create-user-group-folder-ubuntu-server.git
```

Agora Navegue até o Script e altere as permissões para execução:

```bash
cd script-create-user-group-folder-ubuntu-server
chmod +x script.sh -y
```

Agora basta executar o comando ```./script``` no terminal para criar todos os grupos, usuarios, folders e permissões...