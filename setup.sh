echo "Installing ZSH"
source install-zsh.sh

# Install apps and binaries with Brew
echo "Installing Homebrew"
source brew.sh

# Set npm permissions and install global binaries
echo "Setting up Node and NPM with nvm"
source npm.sh