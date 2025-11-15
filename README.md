Esse repositório contém um arquivo containerfile com instruções para criar uma imagem de container para o toolbx. 

### Instruções para a instalação 
#### Clone o repositório.
```
 git clone https://github.com/Ferlinuxdebian/cisco_packet_tracer_toolbx.git
```

Copia o pacote do Packet Tracer para dentro do diretório cisco_packet_tracer_toolbx.
#### Cria a imagem de container
```
podman build -t packet_tracer_toolbox .
```
#### Crie agora o container Toolbx com base na imagem criada
```
toolbox create --image packet_tracer_toolbox --container packet_tracer_container
```
#### Execute o Packet Tracer, e veja o vídeo abaixo para conseguir logar na conta. 
```
toolbox run --container packet_tracer_container /usr/local/bin/packettracer
```
