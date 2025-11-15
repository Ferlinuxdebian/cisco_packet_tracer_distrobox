FROM quay.io/toolbx/ubuntu-toolbox:22.04
ARG DEBIAN_FRONTEND=noninteractive
COPY CiscoPacketTracer_900_Ubuntu_64bit.deb .

# Install necessary dependencies and Packet Tracer
RUN <<EOF
apt update
apt install libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-randr0       \
libxcb-render-util0 libxcb-shm0 libxcb-xfixes0 libopengl0 libnss3 libpulse0 \
libegl1 libxcb-cursor0 libxcb-xinerama0 libxkbcommon-x11-0 -y
apt install ./CiscoPacketTracer_900_Ubuntu_64bit.deb -y
EOF
