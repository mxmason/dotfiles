echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

nvm install 'lts/*'
nvm alias default 'lts/*'

# # Set permissions
# echo "Setting npm permissions"
# sudo chown -R $USER:$(id -gn $USER) $HOME/.config