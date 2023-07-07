if [[ $(command -v fnm) == "" ]]; then
    echo "Installing fnm"
    curl -fsSL https://fnm.vercel.app/install | bash
else
    echo "fnm already installed. Upgrading."
    brew upgrade fnm
fi

echo "Installing LTS node"
fnm install --lts

echo "Setting lts as default"
fnm default lts-latest

echo "Installing bun"
if [[ $(command -v bun) == "" ]]; then
    curl -fsSL https://bun.sh/install | bash
else
    echo "Bun already installed. Upgrading."
    bun upgrade
fi

echo "Installing deno"
brew install deno
