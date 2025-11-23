# dotfiles
My very personal `dotfiles`. Do not clone them down and use my setup as is. This is my baby. However, feel free to take out bits and pieces.

## Installation

Clone this repository to your home directory:
```bash
git clone https://github.com/mvpopuk/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

Run the installation script to create symbolic links:
```bash
./install.sh
```

This will:
- Back up any existing configs (creates `.backup` files)
- Create symlinks from your dotfiles to their proper locations:
  - `~/.dotfiles/nvim` → `~/.config/nvim`
  - `~/.dotfiles/kitty` → `~/.config/kitty`
  - `~/.dotfiles/tmux` → `~/.config/tmux` or `~/.tmux.conf`
  - `~/.dotfiles/zsh/.zshrc` → `~/.zshrc`

## Manual Installation (Alternative)

If you prefer to link only specific configs:

```bash
# Neovim
ln -s ~/.dotfiles/nvim ~/.config/nvim

# Kitty
ln -s ~/.dotfiles/kitty ~/.config/kitty

# Tmux
ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

# Zsh
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
```

## Neovim Setup

The Neovim configuration includes:
- LSP support for PHP (Intelephense), TypeScript, Lua, and more
- Auto-completion with nvim-cmp
- Fuzzy finding with Telescope
- Git integration with Fugitive and Lazygit
- Formatting with none-ls (Pint for PHP, ESLint for JS/TS)
- **No auto-format on save for PHP and JavaScript** - use manual commands instead

### Key Neovim Keymaps

**Leader key:** `<Space>`

**Code Actions & Imports:**
- `<leader>ca` - Open code action menu
- `<leader>li` - Import PHP class under cursor
- `<leader><leader>a` - Code actions with Telescope

**Formatting:**
- `<leader>lf` - Manually format current buffer
- `<leader>lp` - Run Pint on current PHP file
- `<leader>le` - Fix ESLint issues
- `<leader>W` - Save without formatting

**Navigation:**
- `<leader>ff` - Find files
- `<leader>fg` - Live grep
- `<leader>fb` - Browse buffers
- `<leader>gd` - Go to definition
- `<leader>fr` - Find references

## Screenshots

![CleanShot 2024-05-25 at 02 24 38@2x](https://github.com/mvpopuk/dotfiles/assets/35864222/fbae76bd-7b8c-4f4e-bf71-f724a9f4372a)
![CleanShot 2024-05-25 at 02 17 12@2x](https://github.com/mvpopuk/dotfiles/assets/35864222/f863b8d6-c678-4558-b4ec-69ba8e456b1c)
![CleanShot 2024-05-25 at 02 17 33@2x](https://github.com/mvpopuk/dotfiles/assets/35864222/40c8a7dc-0cef-4c4a-b6d5-b4fda3cd3f4c)
![CleanShot 2024-05-25 at 02 17 47@2x](https://github.com/mvpopuk/dotfiles/assets/35864222/d23184ed-7f48-47c7-8896-c157a5e01914)
![CleanShot 2024-05-25 at 02 18 51@2x](https://github.com/mvpopuk/dotfiles/assets/35864222/8fcbbabf-d7e2-49cf-ac4d-7d7f4409d410)
![CleanShot 2024-05-25 at 02 23 37@2x](https://github.com/mvpopuk/dotfiles/assets/35864222/79a3dafd-2770-4083-ab61-7daf78ed9a52)
