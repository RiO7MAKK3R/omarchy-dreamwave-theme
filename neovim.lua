-- ---- Dreamwave Theme ---- --
-- Deep dreamy blue theme for Neovim
-- Self-contained, no external plugins required

return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        -- 🎨 Dreamwave Color Palette
        local colors = {
          bg        = "#0A0F1A",  -- Deep midnight blue
          fg        = "#EAF6FF",  -- Soft icy-white text
          title     = "#4A90E8",  -- Bright but calm blue for headings
          highlight = "#5A8FFF",  -- Hover/focus accent
          selected  = "#1D2A44",  -- Selected item background
          inactive  = "#6E7FAF",  -- Dim text / secondary info
          border    = "#1A2B4C",  -- Borders/dividers
          mid       = "#3F6FD1",  -- Mid-tone blue (numbers, constants)
          darkmid   = "#2E4A8C",  -- Deep accent for strings or subtle highlights
        }

        vim.cmd("highlight clear")
        vim.cmd("set termguicolors")

        -- ✨ Core Syntax
        vim.api.nvim_set_hl(0, "Normal",      { fg = colors.fg, bg = colors.bg })
        vim.api.nvim_set_hl(0, "Comment",     { fg = colors.inactive, italic = true })
        vim.api.nvim_set_hl(0, "Constant",    { fg = colors.mid })
        vim.api.nvim_set_hl(0, "String",      { fg = colors.darkmid })
        vim.api.nvim_set_hl(0, "Number",      { fg = colors.mid })
        vim.api.nvim_set_hl(0, "Boolean",     { fg = colors.highlight, bold = true })
        vim.api.nvim_set_hl(0, "Identifier",  { fg = colors.fg })
        vim.api.nvim_set_hl(0, "Function",    { fg = colors.title, bold = true })
        vim.api.nvim_set_hl(0, "Statement",   { fg = colors.highlight, bold = true })
        vim.api.nvim_set_hl(0, "Keyword",     { fg = colors.highlight, bold = true })
        vim.api.nvim_set_hl(0, "Type",        { fg = colors.mid })
        vim.api.nvim_set_hl(0, "Special",     { fg = colors.title })

        -- 🧭 UI Elements
        vim.api.nvim_set_hl(0, "CursorLine",    { bg = "#101726" })
        vim.api.nvim_set_hl(0, "CursorLineNr",  { fg = colors.highlight, bold = true })
        vim.api.nvim_set_hl(0, "LineNr",        { fg = colors.inactive })
        vim.api.nvim_set_hl(0, "Visual",        { bg = colors.selected })
        vim.api.nvim_set_hl(0, "Search",        { fg = colors.bg, bg = colors.highlight })
        vim.api.nvim_set_hl(0, "IncSearch",     { fg = colors.bg, bg = colors.mid })
        vim.api.nvim_set_hl(0, "Pmenu",         { fg = colors.fg, bg = "#101726" })
        vim.api.nvim_set_hl(0, "PmenuSel",      { fg = colors.fg, bg = colors.selected, bold = true })
        vim.api.nvim_set_hl(0, "StatusLine",    { fg = colors.fg, bg = "#101726" })
        vim.api.nvim_set_hl(0, "StatusLineNC",  { fg = colors.inactive, bg = "#0E1323" })
        vim.api.nvim_set_hl(0, "VertSplit",     { fg = colors.border })
        vim.api.nvim_set_hl(0, "Title",         { fg = colors.title, bold = true })
        vim.api.nvim_set_hl(0, "ErrorMsg",      { fg = colors.bg, bg = colors.highlight, bold = true })
        vim.api.nvim_set_hl(0, "WarningMsg",    { fg = colors.bg, bg = colors.mid })
        vim.api.nvim_set_hl(0, "NonText",       { fg = "#1A2436" })
        vim.api.nvim_set_hl(0, "ColorColumn",   { bg = "#101726" })

        -- 🧠 LSP Diagnostics
        vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#FF6BB5" })
        vim.api.nvim_set_hl(0, "DiagnosticWarn",  { fg = colors.mid })
        vim.api.nvim_set_hl(0, "DiagnosticInfo",  { fg = colors.inactive })
        vim.api.nvim_set_hl(0, "DiagnosticHint",  { fg = colors.title })

        -- 🔍 Treesitter (modern syntax)
        vim.api.nvim_set_hl(0, "@variable",   { fg = colors.fg })
        vim.api.nvim_set_hl(0, "@function",   { fg = colors.title, bold = true })
        vim.api.nvim_set_hl(0, "@keyword",    { fg = colors.highlight, bold = true })
        vim.api.nvim_set_hl(0, "@string",     { fg = colors.darkmid })
        vim.api.nvim_set_hl(0, "@type",       { fg = colors.mid })
        vim.api.nvim_set_hl(0, "@constant",   { fg = colors.mid })
      end,
    },
  },
}
