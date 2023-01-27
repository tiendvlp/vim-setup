# nvim
These files are my config that use for neovim and tmux

# Prerequisites
  - Only for zsh (https://stackoverflow.com/questions/13476232/make-iterm2-launch-with-zsh)
  - Ohmyzsh installed
  - PowerLevel10k as theme
  - Node version > 16
  - Homebrew installed

# Setup
- Install ohmyzsh
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- Install PowerLevel10K
- `git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k`
- open ~/.zshrc and put
ZSH_THEME="powerlevel10k/powerlevel10k"
- Clone this repo into ~/.config/nvim:
`git clone https://github.com/tiendvlp/vim-setup.git ~/.config/nvim`
- Install neovim:
`brew install neovim`
- Install tmux:
`brew install tmux`
- Install ripgrep for live-grep features
`brew install ripgrep`

# Commands:
- To apply new config for tmux:
`tmux source ~/.config/nvim/tmux/.tmux.conf`
- To install plugins for tmux:
Ctrl+A (Prefix) + I (capital i)
