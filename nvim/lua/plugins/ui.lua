return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",

      transparent = false,

      terminal_colors = true,

      styles = {
        comments = { italic = true },
        keywords = { italic = false },
        functions = {},
        variables = {},
        sidebars = "dark",
        floats = "dark",
      },

      on_highlights = function(hl, c)
        -- ============================================================
        -- Base
        -- ============================================================

        hl.Normal = {
          fg = c.fg,
          bg = c.bg,
        }

        hl.NormalNC = {
          fg = c.fg,
          bg = c.bg,
        }

        hl.EndOfBuffer = {
          fg = c.bg,
        }

        hl.SignColumn = {
          bg = c.bg,
        }

        -- ============================================================
        -- Cursor / Lines
        -- ============================================================

        hl.CursorLine = {
          bg = "#1a1b26",
        }

        hl.CursorColumn = {
          bg = "#1a1b26",
        }

        hl.LineNr = {
          fg = "#3b4261",
        }

        hl.CursorLineNr = {
          fg = "#7aa2f7",
          bold = true,
        }

        hl.FoldColumn = {
          fg = "#3b4261",
          bg = c.bg,
        }

        -- ============================================================
        -- Windows / Borders
        -- ============================================================

        hl.WinSeparator = {
          fg = "#292e42",
          bg = c.bg,
        }

        hl.VertSplit = {
          fg = "#292e42",
          bg = c.bg,
        }

        hl.FloatBorder = {
          fg = "#3d59a1",
          bg = "#1a1b26",
        }

        hl.FloatTitle = {
          fg = "#7aa2f7",
          bg = "#1a1b26",
          bold = true,
        }

        hl.NormalFloat = {
          fg = c.fg,
          bg = "#1a1b26",
        }

        -- ============================================================
        -- Popup menu / Completion
        -- ============================================================

        hl.Pmenu = {
          fg = c.fg,
          bg = "#16161e",
        }

        hl.PmenuSel = {
          fg = "#c0caf5",
          bg = "#283457",
          bold = true,
        }

        hl.PmenuSbar = {
          bg = "#1a1b26",
        }

        hl.PmenuThumb = {
          bg = "#3b4261",
        }

        -- ============================================================
        -- Search / Selection
        -- ============================================================

        hl.Visual = {
          bg = "#283457",
        }

        hl.VisualNOS = {
          bg = "#283457",
        }

        hl.Search = {
          fg = "#16161e",
          bg = "#e0af68",
          bold = true,
        }

        hl.IncSearch = {
          fg = "#16161e",
          bg = "#7dcfff",
          bold = true,
        }

        hl.CurSearch = {
          fg = "#16161e",
          bg = "#7aa2f7",
          bold = true,
        }

        hl.Substitute = {
          fg = "#16161e",
          bg = "#bb9af7",
        }

        -- ============================================================
        -- Diagnostics
        -- ============================================================

        hl.DiagnosticError = {
          fg = "#f7768e",
        }

        hl.DiagnosticWarn = {
          fg = "#e0af68",
        }

        hl.DiagnosticInfo = {
          fg = "#7dcfff",
        }

        hl.DiagnosticHint = {
          fg = "#73daca",
        }

        hl.DiagnosticUnderlineError = {
          undercurl = true,
          sp = "#f7768e",
        }

        hl.DiagnosticUnderlineWarn = {
          undercurl = true,
          sp = "#e0af68",
        }

        hl.DiagnosticUnderlineInfo = {
          undercurl = true,
          sp = "#7dcfff",
        }

        hl.DiagnosticUnderlineHint = {
          undercurl = true,
          sp = "#73daca",
        }

        -- ============================================================
        -- Git / Diff
        -- ============================================================

        hl.DiffAdd = {
          fg = "#73daca",
          bg = "#16252a",
        }

        hl.DiffChange = {
          fg = "#7dcfff",
          bg = "#172332",
        }

        hl.DiffDelete = {
          fg = "#f7768e",
          bg = "#2a1b22",
        }

        hl.DiffText = {
          fg = "#c0caf5",
          bg = "#283457",
        }

        hl.GitSignsAdd = {
          fg = "#73daca",
        }

        hl.GitSignsChange = {
          fg = "#7dcfff",
        }

        hl.GitSignsDelete = {
          fg = "#f7768e",
        }

        -- ============================================================
        -- Folds
        -- ============================================================

        hl.Folded = {
          fg = "#565f89",
          bg = "#1a1b26",
          italic = true,
        }

        -- ============================================================
        -- Neo-tree
        -- ============================================================

        hl.NeoTreeNormal = {
          fg = c.fg,
          bg = c.bg_dark,
        }

        hl.NeoTreeNormalNC = {
          fg = "#a9b1d6",
          bg = c.bg_dark,
        }

        hl.NeoTreeDirectoryIcon = {
          fg = "#7aa2f7",
        }

        hl.NeoTreeDirectoryName = {
          fg = "#a9b1d6",
        }

        hl.NeoTreeRootName = {
          fg = "#7aa2f7",
          bold = true,
        }

        hl.NeoTreeFileName = {
          fg = "#c0caf5",
        }

        hl.NeoTreeGitAdded = {
          fg = "#73daca",
        }

        hl.NeoTreeGitModified = {
          fg = "#e0af68",
        }

        hl.NeoTreeGitDeleted = {
          fg = "#f7768e",
        }

        hl.NeoTreeGitConflict = {
          fg = "#bb9af7",
          bold = true,
        }

        -- ============================================================
        -- Status / Tabs
        -- ============================================================

        hl.StatusLine = {
          fg = "#a9b1d6",
          bg = "#16161e",
        }

        hl.StatusLineNC = {
          fg = "#565f89",
          bg = "#16161e",
        }

        hl.TabLine = {
          fg = "#565f89",
          bg = "#16161e",
        }

        hl.TabLineFill = {
          bg = "#16161e",
        }

        hl.TabLineSel = {
          fg = "#c0caf5",
          bg = "#283457",
          bold = true,
        }

        -- ============================================================
        -- Telescope
        -- ============================================================

        hl.TelescopeNormal = {
          fg = c.fg,
          bg = "#1a1b26",
        }

        hl.TelescopeBorder = {
          fg = "#3d59a1",
          bg = "#1a1b26",
        }

        hl.TelescopePromptNormal = {
          fg = c.fg,
          bg = "#16161e",
        }

        hl.TelescopePromptBorder = {
          fg = "#3d59a1",
          bg = "#16161e",
        }

        hl.TelescopePromptTitle = {
          fg = "#16161e",
          bg = "#7aa2f7",
          bold = true,
        }

        hl.TelescopePreviewTitle = {
          fg = "#16161e",
          bg = "#73daca",
          bold = true,
        }

        hl.TelescopeResultsTitle = {
          fg = "#16161e",
          bg = "#bb9af7",
          bold = true,
        }

        hl.TelescopeSelection = {
          fg = "#c0caf5",
          bg = "#283457",
          bold = true,
        }

        -- ============================================================
        -- Snacks Picker
        -- ============================================================

        hl.SnacksPickerNormal = {
          fg = c.fg,
          bg = "#1a1b26",
        }

        hl.SnacksPickerBorder = {
          fg = "#3d59a1",
          bg = "#1a1b26",
        }

        hl.SnacksPickerInput = {
          fg = c.fg,
          bg = "#16161e",
        }

        hl.SnacksPickerInputBorder = {
          fg = "#3d59a1",
          bg = "#16161e",
        }

        hl.SnacksPickerInputTitle = {
          fg = "#16161e",
          bg = "#7aa2f7",
          bold = true,
        }

        hl.SnacksPickerPreview = {
          fg = c.fg,
          bg = "#1a1b26",
        }

        hl.SnacksPickerPreviewBorder = {
          fg = "#73daca",
          bg = "#1a1b26",
        }

        hl.SnacksPickerList = {
          fg = c.fg,
          bg = "#1a1b26",
        }

        hl.SnacksPickerListCursorLine = {
          fg = "#c0caf5",
          bg = "#283457",
          bold = true,
        }

        -- ============================================================
        -- Trouble
        -- ============================================================

        hl.TroubleNormal = {
          fg = c.fg,
          bg = c.bg_dark,
        }

        hl.TroubleText = {
          fg = "#a9b1d6",
        }

        hl.TroubleCount = {
          fg = "#bb9af7",
          bold = true,
        }

        hl.TroubleIndent = {
          fg = "#292e42",
        }

        -- ============================================================
        -- Noice
        -- ============================================================

        hl.NoiceCmdline = {
          fg = c.fg,
          bg = "#1a1b26",
        }

        hl.NoiceCmdlinePopup = {
          fg = c.fg,
          bg = "#1a1b26",
        }

        hl.NoiceCmdlinePopupBorder = {
          fg = "#3d59a1",
          bg = "#1a1b26",
        }

        hl.NoiceCmdlineIcon = {
          fg = "#7aa2f7",
        }

        hl.NoicePopup = {
          fg = c.fg,
          bg = "#1a1b26",
        }

        hl.NoicePopupmenu = {
          fg = c.fg,
          bg = "#16161e",
        }

        -- ============================================================
        -- Breadcrumbs / Dropbar
        -- ============================================================

        hl.DropBarIconKindFile = {
          fg = "#7aa2f7",
        }

        hl.DropBarKindFile = {
          fg = "#c0caf5",
        }

        hl.DropBarKindFolder = {
          fg = "#7dcfff",
        }

        hl.DropBarKindFunction = {
          fg = "#bb9af7",
        }

        hl.DropBarKindMethod = {
          fg = "#bb9af7",
        }

        -- ============================================================
        -- Which-key
        -- ============================================================

        hl.WhichKey = {
          fg = "#7aa2f7",
        }

        hl.WhichKeyGroup = {
          fg = "#7dcfff",
        }

        hl.WhichKeyDesc = {
          fg = "#a9b1d6",
        }

        hl.WhichKeySeparator = {
          fg = "#3b4261",
        }

        -- ============================================================
        -- Notifications
        -- ============================================================

        hl.NotifyINFOBorder = {
          fg = "#7aa2f7",
        }

        hl.NotifyWARNBorder = {
          fg = "#e0af68",
        }

        hl.NotifyERRORBorder = {
          fg = "#f7768e",
        }

        hl.NotifyDEBUGBorder = {
          fg = "#565f89",
        }

        hl.NotifyTRACEBorder = {
          fg = "#bb9af7",
        }
      end,
    },
  },
}
