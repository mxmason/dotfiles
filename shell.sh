#!/usr/bin/env zsh


# Install Oh My ZSH
unameOut="$(uname -s)"
case "${unameOut}" in
  Linux*)     MACHINE=Linux;;
  Darwin*)    MACHINE=Mac;;
  CYGWIN*)    MACHINE=Cygwin;;
  MINGW*)     MACHINE=MinGw;;
  *)          MACHINE="UNKNOWN:${unameOut}"
esac

# Installs .oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  # Installs Oh my ZSH with Homebrew (Mac)
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
    echo "Oh My ZSH already installed. Updating."
    omz update
fi


# install starship
curl -sS https://starship.rs/install.sh | sh
