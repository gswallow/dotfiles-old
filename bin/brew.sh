#!/bin/bash

sudo xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew cask

for i in google-chrome \
         firefox packer \
         vagrant \
         skitch \
         spotify \
         slack ; do
  brew cask install $i
done

for i in autoenv \
         autoenv \
         awscli \
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

for c in google-chrome firefox packer vagrant skitch spotify slack ; do
  brew cask install $c
done
