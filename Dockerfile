FROM archlinux:latest

RUN pacman -Syu --noconfirm && \
	pacman -S --noconfirm base base-devel git sudo ansible

RUN useradd -m -g users -G wheel gleip 
RUN echo "root:1234" | chpasswd
RUN echo "gleip:1234" | chpasswd

RUN echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers

USER gleip
WORKDIR /home/gleip
