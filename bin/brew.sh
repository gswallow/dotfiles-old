#!/bin/bash

sudo xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew cask

for i in autoenv \
         awscli \
         azure-cli \
         bash-completion \
         curl \
         direnv \
         docker \
         docker-machine \
         docker-machine-driver-xhyve \
         fontconfig \
         freetype \
         gd \
         gdbm \
         gist \
         git \
         graphviz \
         jpeg \
         kops \
         kubernetes-cli \
         kubernetes-helm \
         libev \
         libevent \
         libpng \
         libtiff \
         libtool \
         libyaml \
         openssl \
         perl \
         pkg-config \
         python \
         readline \
         ruby \
         s3cmd \
         shellcheck \
         sqlite \
         telnet \
         terraform \
         tmux \
         vagrant-completion \
         vim \
         webp \
         wget \
         xmlstarlet ; do
  brew install $i 
done

for c in google-chrome \
        firefox \
        meld \
        minikube \
        packer \
        vagrant \
        skitch \
        spotify \
        slack \
        wireshark \
        microsoft-remote-desktop-beta \
        virtualbox \
        virtualbox-extension-pack; do
  brew cask install $c
done
