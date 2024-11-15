FROM ghcr.io/ublue-os/bazzite-gnome-nvidia:latest

RUN mkdir -p /var/lib/alternatives \
    && rpm-ostree install \
      zsh \
      neovim \
      alacritty \
      tmux \
      htop \
      pavucontrol \
      && ostree container commit

 # pavucontrol is used to troubleshoot Unity games that use the FMOD audio plugin system, which incorrectly chooses default audio devices. 
