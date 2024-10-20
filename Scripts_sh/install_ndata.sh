#atualizando as lista do apt
sudo apt update -y

#instalando as dependências do Netdata Server
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install git vim build-essential software-properties-common gnupg apt-transport-https \
ca-certificates zlib1g-dev gcc make git autoconf autogen automake pkg-config uuid-dev python3 \
python3-mysqldb python3-pip python3-dev libmysqlclient-dev libuv1-dev netcat libwebsockets16 \
libwebsockets-dev libjson-c-dev libbpfcc-dev liblz4-dev libjudy-dev libelf-dev libmnl-dev \
autoconf-archive curl cmake protobuf-compiler protobuf-c-compiler lm-sensors python3-psycopg2 \
python3-pymysql libssl-dev libprotobuf-dev g++ flex bison nmap libuuid1 libcurl4 libyaml-dev \
libcurl4-openssl-dev
#02_ Clonando o projeto do Netdata Server do Github

#clonando o projeto do Github do Netdata
#opção do comando git clone: --recurse-submodules (initialize and clone submodules within based 
#on the provided pathspec), --depth (create a shallow clone with a history truncated to the 
#specified number of commits), --recursive (initialize and clone and recursive directory)
git clone https://github.com/netdata/netdata --depth=100 --recursive
#03_ Compilando e Instalando o Netdata Server

#OBSERVAÇÃO IMPORTANTE: o processo de compilação e instalação do Netdata demora
#bastante, dependendo do seu hardware pode demorar mais de 30 minutos para baixar
#as dependências, compilar e instalar o Netdata.

#acessando o diretório clonado e instalando o Netdata Server
cd netdata/

#iniciando a instalação do Netdata Server
#opção do ./: execução de script desenvolvido em Shell Script .sh
sudo ./netdata-installer.sh

#saindo do diretório clonado do Netdata Server
cd ..
#04_ Verificando o Serviço e Versão do Netdata Server

#verificando o serviço do Netdata Server
sudo systemctl status netdata
sudo systemctl restart netdata
sudo systemctl stop netdata
sudo systemctl start netdata

#analisando os Log's e mensagens de erro do Servidor do Netdata (NÃO COMENTADO NO VÍDEO)
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu netdata

#verificando a versão do Netdata Server
#opção do comando netdata: -v (version)
sudo netdata -v
#05_ Verificando a Porta de Conexão do Netdata Server

#OBSERVAÇÃO IMPORTANTE: no Ubuntu Server as Regras de Firewall utilizando o comando: 
#iptables ou: ufw está desabilitado por padrão (INACTIVE), caso você tenha habilitado 
#algum recurso de Firewall é necessário fazer a liberação do Fluxo de Entrada, Porta 
#e Protocolo TCP do Serviço corresponde nas tabelas do firewall e testar a conexão.P.

#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'19999' -sTCP:LISTEN
#06_ Habilitando as atualizações automática do Netdata Server

#habilitando o suporte para atualização do Netdata Server
sudo /usr/libexec/netdata/netdata-updater.sh --enable-auto-updates

#OBSERVAÇÃO IMPORTANTE: caso queira atualizar manualmente o Netdata digite o
#mesmo comando do agendamento de atualizações do Netdata no terminal.
#opção do ./: execução de script desenvolvido em Shell Script .sh
sudo /usr/libexec/netdata/./netdata-updater.sh