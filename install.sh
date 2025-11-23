#!/bin/bash

# Dotfiles installation script
# This script creates symbolic links from your dotfiles to their proper locations

set -e

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${GREEN}Starting dotfiles installation...${NC}\n"

# Get the directory where this script is located
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Function to create symlink with backup
create_symlink() {
    local source="$1"
    local target="$2"

    # Create parent directory if it doesn't exist
    mkdir -p "$(dirname "$target")"

    # If target exists and is not a symlink
    if [ -e "$target" ] && [ ! -L "$target" ]; then
        echo -e "${YELLOW}Backing up existing $target to ${target}.backup${NC}"
        mv "$target" "${target}.backup"
    fi

    # If target is a symlink, remove it
    if [ -L "$target" ]; then
        echo -e "${YELLOW}Removing existing symlink $target${NC}"
        rm "$target"
    fi

    # Create the symlink
    echo -e "${GREEN}Creating symlink: $target -> $source${NC}"
    ln -s "$source" "$target"
}

# Symlink configurations
echo -e "\n${GREEN}=== Linking configurations ===${NC}\n"

# Neovim
if [ -d "$DOTFILES_DIR/nvim" ]; then
    create_symlink "$DOTFILES_DIR/nvim" "$HOME/.config/nvim"
fi

# Kitty
if [ -d "$DOTFILES_DIR/kitty" ]; then
    create_symlink "$DOTFILES_DIR/kitty" "$HOME/.config/kitty"
fi

# Tmux
if [ -d "$DOTFILES_DIR/tmux" ]; then
    # Check if there's a tmux.conf file in the tmux directory
    if [ -f "$DOTFILES_DIR/tmux/tmux.conf" ]; then
        create_symlink "$DOTFILES_DIR/tmux/tmux.conf" "$HOME/.tmux.conf"
    else
        # Otherwise link the entire directory
        create_symlink "$DOTFILES_DIR/tmux" "$HOME/.config/tmux"
    fi
fi

# Zsh
if [ -d "$DOTFILES_DIR/zsh" ]; then
    # Check if there's a .zshrc file in the zsh directory
    if [ -f "$DOTFILES_DIR/zsh/.zshrc" ]; then
        create_symlink "$DOTFILES_DIR/zsh/.zshrc" "$HOME/.zshrc"
    fi
    # Check for other zsh config files
    if [ -f "$DOTFILES_DIR/zsh/.zshenv" ]; then
        create_symlink "$DOTFILES_DIR/zsh/.zshenv" "$HOME/.zshenv"
    fi
fi

echo -e "\n${GREEN}=== Installation complete! ===${NC}\n"
echo -e "Your dotfiles have been linked to their proper locations."
echo -e "Any existing configurations have been backed up with a .backup extension.\n"

# Optional: Install Neovim plugins
echo -e "${YELLOW}Do you want to open Neovim to install plugins? (y/n)${NC}"
read -r response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
    echo -e "${GREEN}Opening Neovim to install plugins...${NC}"
    nvim +Lazy
fi
