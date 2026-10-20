# AeroSpace

## Overview

| Component           | Configuration |
| ------------------- | ------------- |
| Window manager      | AeroSpace     |
| Platform            | macOS         |
| Config version      | 2             |
| Default layout      | Tiles         |
| Default orientation | Auto          |
| Key mapping         | QWERTY        |
| Window gaps         | 12 px         |
| Accordion padding   | 30 px         |
| Workspaces          | 1–9, A–F      |
| Auto-reload config  | Enabled       |
| Start at login      | Disabled      |

## Keybindings

All shortcuts use `Alt` (Option) as the primary modifier.

### Window Navigation

| Shortcut          | Action            |
| ----------------- | ----------------- |
| `Alt + H`         | Focus left        |
| `Alt + J`         | Focus down        |
| `Alt + K`         | Focus up          |
| `Alt + L`         | Focus right       |
| `Alt + Shift + H` | Move window left  |
| `Alt + Shift + J` | Move window down  |
| `Alt + Shift + K` | Move window up    |
| `Alt + Shift + L` | Move window right |

### Layouts

| Shortcut          | Action                                 |
| ----------------- | -------------------------------------- |
| `Alt + /`         | Toggle horizontal / vertical tiles     |
| `Alt + ,`         | Toggle horizontal / vertical accordion |
| `Alt + F`         | Toggle fullscreen                      |
| `Alt + Shift + F` | Toggle floating / tiling               |
| `Alt + 0`         | Balance window sizes                   |

### Resizing

| Shortcut         | Action              |
| ---------------- | ------------------- |
| `Alt + -`        | Decrease size by 50 |
| `Alt + =`        | Increase size by 50 |
| `Alt + Ctrl + -` | Decrease size by 30 |
| `Alt + Ctrl + =` | Increase size by 30 |

### Workspaces

| Shortcut            | Action                                        |
| ------------------- | --------------------------------------------- |
| `Alt + 1–9`         | Switch to workspace 1–9                       |
| `Alt + A–E`         | Switch to workspace A–E                       |
| `Alt + Shift + 1–9` | Move window to workspace and follow           |
| `Alt + Shift + A–E` | Move window to workspace and follow           |
| `Alt + Tab`         | Switch between current and previous workspace |

Workspace `F` is persistent but has no direct keyboard shortcut configured.

### Multi-Monitor

| Shortcut              | Action                                       |
| --------------------- | -------------------------------------------- |
| `Alt + Shift + Left`  | Move workspace to previous monitor and focus |
| `Alt + Shift + Right` | Move workspace to next monitor and focus     |
| `Alt + Shift + Up`    | Move window to previous monitor and focus    |
| `Alt + Shift + Down`  | Move window to next monitor and focus        |

Monitor navigation wraps around where configured for workspace movement. The mouse is repositioned toward the center of the newly focused monitor.

## Service Mode

Enter service mode with `Alt + Shift + ;`.

| Shortcut          | Action                           |
| ----------------- | -------------------------------- |
| `Esc`             | Reload config and exit           |
| `R`               | Flatten workspace tree           |
| `F`               | Toggle floating / tiling         |
| `Backspace`       | Close all windows except current |
| `Alt + Shift + H` | Join with left                   |
| `Alt + Shift + J` | Join with down                   |
| `Alt + Shift + K` | Join with up                     |
| `Alt + Shift + L` | Join with right                  |

Service mode returns to the main mode after each configured action.

## Workspace Organization

Workspaces are assigned to monitors through `workspace-to-monitor-force-assignment`.

| Monitor   | Workspaces |
| --------- | ---------- |
| Main      | `1–9`      |
| Secondary | `A–F`      |

The main monitor is intended for primary development workflows, while the secondary monitor can be used for supporting applications.

Workspace assignment refers to AeroSpace monitor identifiers, not fixed physical monitor names.

## Window Layout

The default tiling layout automatically chooses horizontal or vertical orientation.

| Setting              | Value |
| -------------------- | ----- |
| Inner horizontal gap | 12    |
| Inner vertical gap   | 12    |
| Outer top gap        | 12    |
| Outer bottom gap     | 12    |
| Outer left gap       | 12    |
| Outer right gap      | 12    |
| Accordion padding    | 30    |

Container normalization is enabled to simplify nested layouts and flatten redundant container structures.

## Behavior

- Automatic tiling for managed windows
- Persistent workspaces across the configured monitor layout
- Automatic configuration reload
- Vim-style window navigation
- Mouse follows focused monitor changes
- Hidden macOS applications remain hidden unless explicitly shown
- Floating windows supported
- Workspace and window movement across monitors
- Separate service mode for workspace management

All workspace assignments, layouts, gaps, and custom keybindings are defined in `aerospace.toml`.
