#! /bin/sh

echo "Starting the installation script"
echo "============"
echo "Updating Fedora"
sudo dnf update
echo "============"
echo "Install necessary apps"
sudo dnf install ncurses gawk zsh stow atuin zoxide fzf ripgrep
echo "============"
echo "Installing DuckDB latest & lts"
curl https://install.duckdb.org | sh
curl https://install.duckdb.org | DUCKDB_VERSION=1.4.5 sh
echo "Creating lts duckdb symlink"
ln -s ~/.duckdb/cli/1.4.5 ~/.duckdb/cli/lts
echo "============"
echo "Install Starship for zsh"
curl -sS https://starship.rs/install.sh | sh
cd ~/dotfiles && stow . && cd ~

echo "============"
echo "Changing main shell to zsh"
chsh -s $(which zsh)



