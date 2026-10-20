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
        local bg = c.bg
        local surface = "#1f2335"
        local elevated = "#24283b"
        local border = "#414868"
        local muted = "#565f89"
        local blue = "#7aa2f7"
        local selection = "#283457"

        hl.Normal = { fg = c.fg, bg = bg }
        hl.NormalNC = { fg = c.fg, bg = bg }
        hl.EndOfBuffer = { fg = bg }
        hl.SignColumn = { bg = bg }
        hl.FoldColumn = { fg = muted, bg = bg }

        hl.CursorLine = { bg = "#1e2030" }
        hl.CursorColumn = { bg = "#1e2030" }
        hl.LineNr = { fg = muted }
        hl.LineNrAbove = { fg = muted }
        hl.LineNrBelow = { fg = muted }
        hl.CursorLineNr = { fg = blue, bold = true }

        hl.WinSeparator = { fg = "#292e42", bg = bg }
        hl.VertSplit = { fg = "#292e42", bg = bg }
        hl.NormalFloat = { fg = c.fg, bg = surface }
        hl.FloatBorder = { fg = border, bg = surface }
        hl.FloatTitle = { fg = blue, bg = surface, bold = true }

        hl.Pmenu = { fg = c.fg, bg = surface }
        hl.PmenuSel = { fg = c.fg, bg = selection, bold = true }
        hl.PmenuSbar = { bg = surface }
        hl.PmenuThumb = { bg = border }

        hl.Visual = { bg = selection }
        hl.VisualNOS = { bg = selection }
        hl.Search = { fg = bg, bg = c.yellow, bold = true }
        hl.IncSearch = { fg = bg, bg = c.cyan, bold = true }
        hl.CurSearch = { fg = bg, bg = blue, bold = true }
        hl.Substitute = { fg = bg, bg = c.magenta }

        hl.DiagnosticError = { fg = c.red }
        hl.DiagnosticWarn = { fg = c.yellow }
        hl.DiagnosticInfo = { fg = c.cyan }
        hl.DiagnosticHint = { fg = c.teal }

        hl.DiagnosticUnderlineError = { undercurl = true, sp = c.red }
        hl.DiagnosticUnderlineWarn = { undercurl = true, sp = c.yellow }
        hl.DiagnosticUnderlineInfo = { undercurl = true, sp = c.cyan }
        hl.DiagnosticUnderlineHint = { undercurl = true, sp = c.teal }

        hl.DiffAdd = { bg = "#1a2d29" }
        hl.DiffChange = { bg = "#1b2838" }
        hl.DiffDelete = { bg = "#30232b" }
        hl.DiffText = { bg = selection, bold = true }

        hl.GitSignsAdd = { fg = c.green }
        hl.GitSignsChange = { fg = blue }
        hl.GitSignsDelete = { fg = c.red }

        hl.Folded = { fg = muted, bg = surface, italic = true }
        hl.IblIndent = { fg = "#292e42" }
        hl.IblScope = { fg = border }

        hl.StatusLine = { fg = c.fg, bg = surface }
        hl.StatusLineNC = { fg = muted, bg = bg }
        hl.TabLine = { fg = muted, bg = bg }
        hl.TabLineFill = { bg = bg }
        hl.TabLineSel = { fg = c.fg, bg = elevated, bold = true }

        hl.SnacksPickerNormal = { fg = c.fg, bg = surface }
        hl.SnacksPickerBorder = { fg = border, bg = surface }
        hl.SnacksPickerInput = { fg = c.fg, bg = surface }
        hl.SnacksPickerInputBorder = { fg = border, bg = surface }
        hl.SnacksPickerInputTitle = { fg = blue, bg = surface, bold = true }
        hl.SnacksPickerPreview = { fg = c.fg, bg = surface }
        hl.SnacksPickerPreviewBorder = { fg = border, bg = surface }
        hl.SnacksPickerList = { fg = c.fg, bg = surface }
        hl.SnacksPickerListCursorLine = { fg = c.fg, bg = selection, bold = true }

        hl.TroubleNormal = { fg = c.fg, bg = surface }
        hl.TroubleText = { fg = c.fg }
        hl.TroubleCount = { fg = c.magenta, bold = true }
        hl.TroubleIndent = { fg = border }

        hl.NoiceCmdline = { fg = c.fg, bg = surface }
        hl.NoiceCmdlinePopup = { fg = c.fg, bg = surface }
        hl.NoiceCmdlinePopupBorder = { fg = border, bg = surface }
        hl.NoiceCmdlineIcon = { fg = blue }
        hl.NoicePopup = { fg = c.fg, bg = surface }
        hl.NoicePopupmenu = { fg = c.fg, bg = surface }

        hl.DropBarIconKindFile = { fg = blue }
        hl.DropBarKindFile = { fg = c.fg }
        hl.DropBarKindFolder = { fg = c.cyan }
        hl.DropBarKindFunction = { fg = c.magenta }
        hl.DropBarKindMethod = { fg = c.magenta }

        hl.WhichKey = { fg = blue }
        hl.WhichKeyGroup = { fg = c.cyan }
        hl.WhichKeyDesc = { fg = c.fg }
        hl.WhichKeySeparator = { fg = muted }

        hl.NotifyINFOBorder = { fg = blue }
        hl.NotifyWARNBorder = { fg = c.yellow }
        hl.NotifyERRORBorder = { fg = c.red }
        hl.NotifyDEBUGBorder = { fg = muted }
        hl.NotifyTRACEBorder = { fg = c.magenta }
      end,
    },
  },
}
