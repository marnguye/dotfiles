# Neovim

## Stack

| Component                    | Tool                   |
| ---------------------------- | ---------------------- |
| Plugin manager               | lazy.nvim              |
| Distribution                 | LazyVim                |
| Theme                        | Tokyo Night            |
| File explorer                | Snacks Explorer        |
| Fuzzy finder                 | Snacks Picker          |
| Completion                   | Blink.cmp              |
| LSP                          | nvim-lspconfig + Mason |
| Syntax highlighting          | Treesitter             |
| Diagnostics                  | Trouble                |
| Git                          | Gitsigns + Snacks      |
| Notifications / command line | Noice                  |
| Navigation                   | Flash + Harpoon 2      |
| Indentation                  | indent-blankline       |
| Symbol outline               | outline.nvim           |
| Testing                      | Neotest                |

## Keybindings

Leader key: `Space`

### Files & Navigation

| Key            | Action               |
| -------------- | -------------------- |
| `Space e`      | Toggle file explorer |
| `Space Space`  | Find files           |
| `Space fg`     | Live grep            |
| `Space fb`     | Find open buffers    |
| `s`            | Flash jump           |
| `S`            | Flash Treesitter     |
| `gd`           | Go to definition     |
| `gr`           | Find references      |
| `K`            | Hover documentation  |
| `Ctrl h/j/k/l` | Navigate windows     |

### Harpoon

| Key         | Action               |
| ----------- | -------------------- |
| `Space ha`  | Add current file     |
| `Space hh`  | Open quick menu      |
| `Space 1–5` | Jump to marked file  |
| `Space hn`  | Next marked file     |
| `Space hp`  | Previous marked file |

### Editing & LSP

| Key                 | Action                        |
| ------------------- | ----------------------------- |
| `Space ca`          | Code actions                  |
| `Space rn`          | Rename symbol                 |
| `Space dl`          | Line diagnostics              |
| `[d` / `]d`         | Previous / next diagnostic    |
| `Space dj`          | Duplicate line down           |
| `Space dk`          | Duplicate line up             |
| `Alt Backspace`     | Delete previous word          |
| `Ctrl Space`        | Open completion               |
| `Ctrl j/k`          | Navigate suggestions          |
| `Enter`             | Confirm selected suggestion   |
| `Tab` / `Shift Tab` | Navigate snippet placeholders |
| `Ctrl e`            | Close completion              |

### Git

| Key        | Action              |
| ---------- | ------------------- |
| `Space gs` | Git status          |
| `Space gd` | Git diff            |
| `Space gl` | Git log             |
| `Space gL` | File history        |
| `Space gb` | Toggle inline blame |

### Testing

| Key        | Action              |
| ---------- | ------------------- |
| `Space tn` | Run nearest test    |
| `Space tf` | Run current file    |
| `Space ta` | Run all tests       |
| `Space tl` | Run last test       |
| `Space to` | Show test output    |
| `Space ts` | Toggle test summary |
| `Space tx` | Stop running test   |

### Terminal & UI

| Key        | Action                  |
| ---------- | ----------------------- |
| `Space tt` | Toggle terminal         |
| `Space co` | Toggle symbol outline   |
| `Space uL` | Toggle light/dark theme |
| `Space sj` | Jump history            |
| `Space sm` | Marks                   |
| `Space su` | Undo history            |
| `Space sR` | Resume picker           |

## Features

**Navigation** — Fuzzy search, file explorer, Flash motions, Harpoon quick files, LSP definitions, references, and symbol outline.

**Editing** — Blink completion, snippets, code actions, rename, syntax-aware highlighting, and active indentation scopes.

**Git** — File status, diff previews, commit history, inline blame, and change indicators.

**Testing** — Run individual tests or entire files using Neotest, with inline status indicators and on-demand output.

**UI** — Tokyo Night colors, floating pickers, minimal diagnostics, Noice command palette, and a custom ASCII dashboard.

## Languages

| Language                | Tooling                         |
| ----------------------- | ------------------------------- |
| TypeScript / JavaScript | TypeScript LSP, ESLint          |
| React / Next.js         | TSX, Tailwind CSS, Emmet        |
| Go                      | gopls                           |
| Python                  | LazyVim Python extra            |
| SQL                     | SQL tooling, Dadbod completion  |
| HTML / CSS              | HTML LSP, CSS LSP               |
| JSON / YAML             | Language servers and validation |
| Docker                  | LazyVim Docker extra            |
| Vue                     | LazyVim Vue extra               |

## Testing Frameworks

- Vitest
- Jest
- Go test
- pytest

## Maintenance

| Command                  | Action                          |
| ------------------------ | ------------------------------- |
| `:Lazy`                  | Plugin manager                  |
| `:Lazy sync`             | Install/update plugins          |
| `:Mason`                 | LSP/tool manager                |
| `:LspInfo`               | Inspect active language servers |
| `:checkhealth`           | Check editor health             |
| `:checkhealth blink.cmp` | Check completion engine         |
| `:messages`              | Inspect notifications           |

---

```

```
