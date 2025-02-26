FROM archlinux:latest

RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm base base-devel git sudo ansible && \
    pacman -Scc --noconfirm

RUN useradd -m -g users -G wheel gleip && \
    echo "root:1234" | chpasswd && \
    echo "gleip:1234" | chpasswd && \
    echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers

USER gleip
WORKDIR /home/gleip
