#atualizando as lista do apt
sudo apt update -y

#instalando as dependências do Webmin
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime \
libio-pty-perl apt-show-versions python2 python3 unzip apt-transport-https libdbi-perl \
software-properties-common libdbd-mysql-perl
#02_ Adicionando o Repositório do Webmin no Ubuntu Server

#opção do comando curl: -o (output file)
curl -o setup-repos.sh https://raw.githubusercontent.com/webmin/webmin/master/setup-repos.sh

#executando o script de adicionar o repositório
sudo sh setup-repos.sh
#03_ Instalando o Webmin

#atualizando as lista do apt com o novo repositório do Webmin
sudo apt update -y

#instalando o Webmin
#opção do comando apt: --install-recommends (Consider suggested packages as a dependency for installing)
sudo apt install --install-recommends webmin
#04_ Habilitando o Serviço do Webmin

#habilitando o serviço do Webmin
sudo systemctl daemon-reload
sudo systemctl enable webmin
sudo systemctl start webmin
#05_ Verificando o Serviço e Versão do Webmin

#verificando o serviço do Webmin
sudo systemctl status webmin
sudo systemctl restart webmin
sudo systemctl stop webmin
sudo systemctl start webmin

#analisando os Log's e mensagens de erro do Servidor do OpenSSH (NÃO COMENTADO NO VÍDEO)
#opção do comando journalctl: -t (identifier), -x (catalog), -e (pager-end), -u (unit)
sudo journalctl -t webmin
sudo journalctl -xeu webmin

#verificando a versão do Webmin
#opção do comando grep: -i (ignore-case)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
sudo apt list --installed | grep -i webmin 
#06_ Verificando a Porta de Conexão do Webmin

#OBSERVAÇÃO IMPORTANTE: no Ubuntu Server as Regras de Firewall utilizando o comando: 
#iptables ou: ufw está desabilitado por padrão (INACTIVE), caso você tenha habilitado 
#algum recurso de Firewall é necessário fazer a liberação do Fluxo de Entrada, Porta 
#e Protocolo TCP do Serviço corresponde nas tabelas do firewall e testar a conexão.

#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'10000' -sTCP:LISTEN