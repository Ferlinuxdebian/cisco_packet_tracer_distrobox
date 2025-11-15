Esse repositório contém um arquivo containerfile com instruções para criar uma imagem de container para o distrobox. 

### Instruções para a instalação 
#### Clone o repositório.
```
 git clone https://github.com/Ferlinuxdebian/cisco_packet_tracer_distrobox.git
```
*Copia o pacote do Packet Tracer para dentro do diretório cisco_packet_tracer_distrobox.*
#### Cria a imagem de container
```
cd packet_tracer_distrobox
podman build -t packet_tracer_distrobox .
```
#### Crie agora o container Toolbx com base na imagem criada
```
distrobox create --image packet_tracer_distrobox --name packet_tracer_container
```
#### Execute o Packet Tracer, e veja o vídeo abaixo para conseguir logar na conta. 
```
distrobox enter packet_tracer_container -- /usr/local/bin/packettracer
```

![Alt Text](https://i.imgur.com/batAycT.gif)

### Passo opcional criar um ícone no sistema
#### Baixar o PNG do ícone
```
wget -O ~/.local/share/icons/packettracer.png https://bit.ly/442u58W
```
#### Criar a entrada no desktop
```
tee ~/.local/share/applications/Packet_Tracer.desktop << EOF
[Desktop Entry]
Name=Packet Tracer
GenericName=Packet Tracer (Toolbox)
Comment=Executar Packet Tracer dentro do Toolbox
Categories=Distrobox;System;Utility
Exec=distrobox enter packet_tracer_container -- /usr/local/bin/packettracer %F
Icon=/home/$USER/.local/share/icons/packettracer.png
Keywords=toolbox;
NoDisplay=false
Terminal=false
TryExec=/usr/bin/toolbox
Type=Application
Actions=Remove;
Name[pt]=Packet Tracer
Name[pt_BR]=Packet Tracer
Name[pt_BR.UTF-8]=Packet Tracer
Comment[pt]=Executar Packet Tracer dentro do Toolbox
Comment[pt_BR]=Executar Packet Tracer dentro do Toolbox
Comment[pt_BR.UTF-8]=Executar Packet Tracer dentro do Toolbox
Keywords[pt]=toolbox;
Keywords[pt_BR]=toolbox;
Keywords[pt_BR.UTF-8]=toolbox;
PrefersNonDefaultGPU=false
Hidden=false
StartupNotify=false
StartupWMClass=PacketTracer

[Desktop Action Remove]
Name=Remove Packet Tracer from system
Exec=/usr/bin/toolbox rm packet_tracer_container
Name[pt]=Remove Packet Tracer do sistema
Name[pt_BR]=Remove Packet Tracer do sistema
Name[pt_BR.UTF-8]=Remove Packet Tracer do sistema
EOF
```
