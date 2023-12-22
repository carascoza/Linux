# Comandos Linux

### Alterar senha root
```powershell
sudo passwd root
```
### Alterar nome host linux
```powershell
sudo echo "NOME_QUE_DESEJA" > /proc/sys/kernel/hostname
```
### Atualizar biblioteca 
```powershell
sudo apt-get update -y
```
### Atualizar bibliotecas Linux e apps
```powershell
sudo apt update && sudo apt upgrade -y
```
### instalar aplicativo
```powershell
sudo apt-get install <app>
``` 
### Desligar estação
```powershell
sudo shutdown now
``` 
### Reiniciar estação
```powershell
sudo reboot
``` 
### remover repositório
```powershell
sudo add-apt-repository --remove ppa:<PPA_NAME>
``` 
### Listar Rede
```powershell
ifconfig -a
``` 
### Listar arquivos
```powershell
Ls -l
Ls -la #(listar arquivos ocultos)
``` 
### Verificar diretório
```powershell
pwd
```
### Verificar Usuário
```powershell
whoami
``` 
### criar arquivo txt
```powershell
Echo "conteudo" > arquivo.txt
``` 
### imprimir conteúdo arquivo
```powershell
cat bemvindo.txt
cat -n #(Listar linhas do arquivo)
``` 
### limpar tela
```powershell
clear
```
### Diretório atual
```powershell
Cd .
``` 
### Voltar diretorio
```powershell
Cd ..
``` 
### Criar diretorio
```powershell
mkdir workspace
``` 
### mover arquivo
```powershell
Mv nomearquivo destinoarquivo
``` 
### copiar arquivo
```powershell
Cp nomearquivo destinoaqrquivo
``` 
### remover aquivo
```powershell
Rm nomearquivo
``` 
### remover diretório com arquivos
```powershell
Rm -r nomediretorio
``` 
### compactar arquivos taz
```powershell
tar -czf work.tar.gz workspace/
``` 
### descompactar arquivos taz
```powershell
tar -xzf nomearquivo.tar.gz
``` 
### listar as 10 primeira linhas
```powershell
head arquivo.txt
head -n 3 arquivo.txt #(3 linhas)
``` 
### listar as últimas linhas
```powershell
tail google.txt
tail -n 3 google.txt #(3 linhas)
``` 
### less
```powershell
less
``` 
### editor de texto vi
```powershell
vi
```