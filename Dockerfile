FROM archlinux:latest

RUN pacman -Syu --noconfirm && \
	pacman -S --noconfirm base base-devel git sudo ansible

RUN useradd -m -g users -G wheel gleip 
RUN passwd -d gleip

USER gleip
WORKDIR /home/gleip
