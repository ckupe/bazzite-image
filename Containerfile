FROM ghcr.io/ublue-os/bazzite-gnome-nvidia-open:latest

RUN mkdir -p /var/lib/alternatives && \
    rpm-ostree install zsh neovim alacritty tmux && \
    ostree container commit
