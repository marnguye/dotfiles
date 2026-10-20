# Zsh

## Overview

| Component        | Configuration  |
| ---------------- | -------------- |
| Shell            | Zsh            |
| Primary platform | macOS          |
| Prompt           | Starship       |
| Theme            | Tokyo Night    |
| Shell history    | 10,000 entries |
| Completion       | Native Zsh     |
| Fuzzy finder     | fzf            |
| File listing     | eza            |
| File viewer      | bat            |
| Node.js manager  | NVM            |
| Package manager  | Homebrew       |

## Aliases

### Navigation & Files

| Alias  | Command                            | Description                    |
| ------ | ---------------------------------- | ------------------------------ |
| `ll`   | `eza -lhg`                         | Detailed file listing          |
| `lla`  | `eza -alhg`                        | List all files                 |
| `ls`   | `eza`                              | Modern file listing            |
| `tree` | `eza --tree`                       | Directory tree                 |
| `cat`  | `bat --paging=never --style=plain` | Syntax-highlighted file output |
| `catt` | `bat`                              | File viewer                    |
| `cata` | `bat --show-all --paging=never`    | Show hidden characters         |

eza and bat aliases are enabled when the corresponding tools are installed. Otherwise, the standard commands remain available.

### Development

| Alias     | Command       |
| --------- | ------------- |
| `v`       | `nvim`        |
| `n`       | `nvim`        |
| `python`  | `python3`     |
| `history` | `history -30` |

### Kubernetes

| Alias | Command            |
| ----- | ------------------ |
| `k`   | `kubectl`          |
| `kga` | `kubectl get all`  |
| `kgp` | `kubectl get pods` |

## Shell Integrations

| Tool       | Function                              |
| ---------- | ------------------------------------- |
| Starship   | Minimal two-line prompt               |
| SketchyBar | Status bar integration                |
| Homebrew   | Package management and status updates |
| eza        | Modern directory listings             |
| bat        | Syntax-highlighted file output        |
| fzf        | Fuzzy search and completion           |
| NVM        | Node.js version management            |
| Neovim     | Default editor aliases                |

Integrations are loaded conditionally when available.

## History

| Setting                       | Value                    |
| ----------------------------- | ------------------------ |
| History file                  | `~/.zsh_history`         |
| In-memory history             | 10,000                   |
| Saved history                 | 10,000                   |
| Shared history                | Enabled                  |
| Incremental history           | Enabled                  |
| Duplicate entries             | Ignored when consecutive |
| Commands starting with spaces | Excluded                 |

Extended history records timestamps and execution durations.

## Completion

Native Zsh completion is configured using `compinit`.

| Feature                     | Configuration                |
| --------------------------- | ---------------------------- |
| Interactive completion menu | Enabled                      |
| Completion cache            | `~/.zcompcache`              |
| Hidden files in completion  | Included                     |
| fzf completion trigger      | `::`                         |
| fzf preview                 | bat with syntax highlighting |
