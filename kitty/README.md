# Kitty

## Overview

| Component         | Configuration                |
| ----------------- | ---------------------------- |
| Terminal          | Kitty 0.47.4                 |
| Platform          | macOS                        |
| Theme             | Tokyo Night                  |
| Font              | JetBrainsMono Nerd Font Mono |
| Font size         | 14 pt                        |
| Cursor            | Blinking beam                |
| Opacity           | 97%                          |
| Background blur   | 20                           |
| Tab bar           | Top, separator style         |
| Window layouts    | Splits, Fat, Grid, Stack     |
| Scrollback        | 50,000 lines                 |
| Shell integration | Enabled                      |

## Appearance

| Element            | Value     |
| ------------------ | --------- |
| Background         | `#16161e` |
| Foreground         | `#c0caf5` |
| Accent / Cursor    | `#7aa2f7` |
| Selection          | `#283457` |
| Active border      | `#7aa2f7` |
| Inactive border    | `#292e42` |
| Window padding     | 10 px     |
| Line height        | 108%      |
| Window decorations | Hidden    |

## Keybindings

### Tabs

| Shortcut          | Action                       |
| ----------------- | ---------------------------- |
| `Cmd + T`         | New tab in current directory |
| `Cmd + W`         | Close tab                    |
| `Cmd + 1–9`       | Switch to tab 1–9            |
| `Cmd + Shift + [` | Previous tab                 |
| `Cmd + Shift + ]` | Next tab                     |
| `Cmd + Shift + T` | Rename tab                   |
| `Cmd + Shift + P` | Select tab                   |

### Windows & Splits

| Shortcut              | Action                 |
| --------------------- | ---------------------- |
| `Cmd + Shift + Enter` | Vertical split         |
| `Cmd + Enter`         | Horizontal split       |
| `Cmd + [`             | Previous window        |
| `Cmd + ]`             | Next window            |
| `Alt + Left`          | Decrease window width  |
| `Alt + Right`         | Increase window width  |
| `Alt + Up`            | Increase window height |
| `Alt + Down`          | Decrease window height |
| `Alt + =`             | Reset window size      |

New splits inherit the current working directory.

### Layouts

| Shortcut          | Action                   |
| ----------------- | ------------------------ |
| `Cmd + Shift + F` | Toggle Stack layout      |
| `Cmd + Shift + L` | Cycle window layouts     |
| `Cmd + Shift + R` | Rotate split arrangement |

Available layouts: `splits`, `fat`, `grid`, `stack`.

### Navigation & Utilities

| Shortcut          | Action                   |
| ----------------- | ------------------------ |
| `Cmd + Shift + O` | Open text hints          |
| `Cmd + Shift + U` | Open URL hints           |
| `Cmd + Shift + G` | Open file path hints     |
| `Cmd + Shift + B` | Toggle input broadcast   |
| `Cmd + Shift + /` | Open scrollback in pager |

### Configuration

| Shortcut          | Action                   |
| ----------------- | ------------------------ |
| `Cmd + Shift + ,` | Edit Kitty configuration |
| `Cmd + Shift + .` | Reload configuration     |

## Features

### Window Management

- Multiple tabs and split windows
- Four built-in layouts
- Keyboard-driven window navigation and resizing
- Working-directory inheritance for tabs and splits
- Manual tab naming
- Optional input broadcasting across windows

### Terminal Experience

- GPU-accelerated rendering
- 50,000-line scrollback history
- Shell integration
- Command completion notifications after 5 seconds when the window is not visible
- Automatic clipboard copy on text selection
- Smart trailing whitespace removal
- URL and file path detection through hints
- Audio bell disabled
