# Dotfiles

## Stack

| Tool                               | Description                     |
| ---------------------------------- | ------------------------------- |
| [Neovim](./nvim/README.md)         | LazyVim, LSP, Blink.cmp, Snacks |
| [Kitty](./kitty/README.md)         | Terminal emulator               |
| [AeroSpace](./aerospace/README.md) | Tiling window manager           |
| [Starship](./starship/README.md)   | Minimal shell prompt            |
| [Zsh](./zsh/README.md)             | Shell, aliases, completion      |

## Tools

| Category    | Stack                        |
| ----------- | ---------------------------- |
| Editor      | Neovim, LazyVim              |
| Terminal    | Kitty, Zsh, Starship         |
| Navigation  | Snacks, Flash, Harpoon       |
| Development | Git, Docker, Kubernetes      |
| Languages   | TypeScript, Go, Python, Rust |
| CLI         | eza, bat, fzf                |

## Appearance

- **Theme:** Tokyo Night
- **Font:** JetBrainsMono Nerd Font
- **Accent:** `#7aa2f7`

## Setup

**Requirements:** macOS, Homebrew, Git, JetBrainsMono Nerd Font.

```bash
git clone git@github.com:marnguye/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

Install the main tools:

```bash
brew install neovim kitty starship zsh eza bat fzf
```

Install AeroSpace separately.

## Configuration

| Source                           | Destination                          |
| -------------------------------- | ------------------------------------ |
| `nvim/`                          | `~/.config/nvim/`                    |
| `kitty/kitty.conf`               | `~/.config/kitty/kitty.conf`         |
| `aerospace/aerospace.toml`       | `~/.config/aerospace/aerospace.toml` |
| `starship/.config/starship.toml` | `~/.config/starship.toml`            |
| `zsh/.zshrc`                     | `~/.zshrc`                           |

Configuration files are linked manually. See individual README files for shortcuts and details.
