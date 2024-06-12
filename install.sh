#!/bin/bash

# Update the package index
sudo xbps-install -Syu

# Install essential packages
sudo xbps-install -y \
    git \
    vim \
    htop \
    neofetch \
    curl \
    wget \
    gcc \
    make \
    unzip \
    zsh \
    tmux \
    python3 \
    python3-pip \
    nodejs \
    npm \
    vlc \
    gimp \
    libreoffice \
    firefox \
    thunderbird \
    code \
    gnome-tweaks \
    gnome-shell-extensions

# Install development tools
sudo xbps-install -y \
    docker \
    docker-compose \
    cmake \
    ninja \
    valgrind

# Install additional utilities
sudo xbps-install -y \
    exa \
    bat \
    fd \
    ripgrep \
    fzf

# Install Linux gaming essentials (Steam and Lutris)
sudo xbps-install -y \
    steam \
    lutris

# Install virtualization tools
sudo xbps-install -y \
    qemu \
    virt-manager \
    libvirt

# Install GPU drivers (adjust for your GPU)
sudo xbps-install -y \
    mesa \
    vulkan-loader \
    vulkan-tools \
    amdvlk # For AMD GPUs

# Install Flatpak and add Flathub repository
sudo xbps-install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install Flatpak applications
flatpak install -y flathub com.spotify.Client
flatpak install -y flathub org.bleachbit.BleachBit

# Cleanup
sudo xbps-remove -O

# Verify installations
echo "Installed packages:"
xbps-query -l

echo "Installed Flatpak applications:"
flatpak list

echo "All specified programs have been installed."
