# dotfiles

## .config/[iterm2](https://iterm2.com/)

```bash
brew install iterm2
```

#### set location of preferences file then restart iterm2

## .config/[sheldon](https://github.com/rossmacarthur/sheldon)

```bash
cargo install sheldon
```

## .config/[zsh](https://www.zsh.org/)

set `~/.zshenv` to use above location

## .config/[nvim](https://neovim.io/)

### deps

```bash
brew install cmake
brew install ripgrep
```

### install rust for lua formatting
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo --version
cargo install stylua
```

### install
```bash
brew install neovim
```

### nerd fonts (dev icons)
```bash
brew tap homebrew/cask-fonts
brew install font-mononoki-nerd-font
```

#### open (and restart) nvim to start plugin install automatically

