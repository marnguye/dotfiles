# Starship

## Overview

| Component        | Configuration                |
| ---------------- | ---------------------------- |
| Prompt           | Starship                     |
| Theme            | Tokyo Night                  |
| Layout           | Two-line                     |
| Shell            | Zsh                          |
| Font             | Nerd Font                    |
| Prompt character | `❯`                          |
| Git integration  | Branch, status, ahead/behind |
| Languages        | Node.js, Go, Python, Rust    |
| Containers       | Docker context               |
| Command duration | Commands taking 2s or longer |

| Position    | Information                                         |
| ----------- | --------------------------------------------------- |
| Left        | Directory, Git branch, Git status                   |
| Right       | Language versions, Docker context, command duration |
| Second line | Prompt character                                    |

The right-aligned section uses Starship's `$fill` module.

## Modules

| Module           | Description                                |
| ---------------- | ------------------------------------------ |
| Directory        | Current directory or repository root       |
| Git Branch       | Active Git branch                          |
| Git Status       | Working tree changes and remote divergence |
| Node.js          | Detected Node.js version                   |
| Go               | Detected Go version                        |
| Python           | Detected Python version                    |
| Rust             | Detected Rust version                      |
| Docker           | Active Docker context when applicable      |
| Command Duration | Execution time of slower commands          |
| Character        | Command status and Vim mode indicator      |

## Git Status

| Indicator | Meaning         |
| --------- | --------------- |
| `!`       | Modified files  |
| `+`       | Staged changes  |
| `?`       | Untracked files |
| `✘`       | Deleted files   |
| `»`       | Renamed files   |
| `⚡`      | Merge conflicts |
| `⇡`       | Commits ahead   |
| `⇣`       | Commits behind  |
| `󰏗`       | Stashed changes |

Indicators display counts when applicable.

## Language Detection

Language versions appear automatically when relevant project files are detected.

| Language | Detection                                                                                |
| -------- | ---------------------------------------------------------------------------------------- |
| Node.js  | `package.json`, `.nvmrc`, `.node-version`, `node_modules/`                               |
| Go       | `go.mod`, `go.work`                                                                      |
| Python   | `pyproject.toml`, `requirements.txt`, `.python-version`, `Pipfile`, virtual environments |
| Rust     | `Cargo.toml`                                                                             |

Versions are displayed in `vMajor.Minor` format.

## Appearance

| Element          | Color      |
| ---------------- | ---------- |
| Directory        | Blue       |
| Git branch       | Dark blue  |
| Node.js          | Teal       |
| Go               | Light blue |
| Python           | Yellow     |
| Rust             | Orange     |
| Success prompt   | Green      |
| Error prompt     | Red        |
| Vim command mode | Purple     |

The palette uses Tokyo Night colors and is designed to match Kitty and Neovim.

## Performance

| Setting                  | Value     |
| ------------------------ | --------- |
| Scan timeout             | 30 ms     |
| Command timeout          | 500 ms    |
| Minimum command duration | 2 seconds |
| New line before prompt   | Enabled   |
| Milliseconds in duration | Disabled  |

Only relevant language modules are shown to reduce visual noise.

Username, hostname, time, package version, AWS, Lua, Haskell, Ruby, and background jobs are disabled.

Starship is initialized through the shell configuration.

```sh
eval "$(starship init zsh)"
```
