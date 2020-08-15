#!/usr/bin/env bash

# Install Homebrew (if not installed)
echo "Installing Homebrew."

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install and setup Mongodb
brew tap mongodb/brew
brew install mongodb-community
sudo mkdir -p /System/Volumes/Data/data/db
sudo chown -R `id -un` /System/Volumes/Data/data/db

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed` as gsed
brew install gnu-sed

brew install gmp
brew install grep
brew install node

# Install useful binaries.
brew install \
  git \
  github/gh/gh \
  imagemagick --with-webp \
  p7zip \
  pigz \
  pv \
  rsync \
  rename \
  ssh-copy-id \
  tree \
  vbindiff

## Apps I use
brew cask install \
  1password \
  alfred \
  cleanshot \
  discord \
  firefox \
  google-chrome \
  iterm2 \
  microsoft-edge \
  notion \
  slack \
  spotify \
  visual-studio-code

# Remove outdated versions from the cellar.
brew cleanup