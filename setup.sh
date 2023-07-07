echo "Installing Homebrew and useful packages"

source brew.sh

echo "Installing Starship and Oh My ZSH"
source shell.sh

echo "Setting up development tooling (fnm, node, deno, bun)"
source node.sh

# Copy zshrc to home directory
# replacing the existing one
echo "Copying zshrc to home directory"
cp .zshrc ~/

# Set brew zsh as default shell
echo "Setting brew zsh as default shell"
sudo sh -c "echo $(which zsh) >> /etc/shells"

# Reload zsh
echo "Reloading zsh"
exec zsh -l
