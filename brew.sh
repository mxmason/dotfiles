#!/usr/bin/env zsh

# Install Homebrew (if not installed)
if [[ $(command -v brew) == "" ]]; then
    # Install Homebrew
     echo "Installing Homebrew."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed. Updating."
    brew update
fi

# Useful binaries.
brew install \
  git \
  github/gh/gh \
  imagemagick \
  zsh

# Install nerd fonts
# (used to make the terminal and text editor look nice)
brew install --cask \
  font-fire-code \
	font-fira-mono
  font-fira-code-nerd-font

# Applications
brew install --cask \
  1password \
  alfred \
  cleanshot \
  discord \
  firefox \
  google-chrome \
  gpg-suite-no-mail \
  iterm2 \
  microsoft-edge \
  notion \
  postman \
  slack \
  spotify \
  visual-studio-code \
  zoom

# Remove outdated versions from the cellar.
brew cleanup
