-- Highlight todo, notes, etc in comments
return {
  "folke/todo-comments.nvim",
  event = "VimEnter",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    signs = true,
    TODO = { icon = " ", color = "info",    alt = { "@todo" } },
    NOTE = { icon = " ", color = "hint",    alt = { "INFO", "@note" } },
    WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX", "@warning", "@warn" } },
    -- list of named colors where we try to extract the guifg from the
    -- list of highlight groups or use the hex color if hl not found as a fallback
    colors = {
      error   = { "DiagnosticError", "ErrorMsg",   "#DC2626" },
      warning = { "DiagnosticWarn",  "WarningMsg", "#FBBF24" },
      info    = { "DiagnosticInfo",                "#2563EB" },
      hint    = { "DiagnosticHint",                "#10B981" },
      default = { "Identifier",                    "#7C3AED" },
      test    = { "Identifier",                    "#FF00FF" }
    },
    search = {
      -- regex that will be used to match keywords.
      -- don't replace the (KEYWORDS) placeholder
      pattern = [[\b(KEYWORDS):]], -- ripgrep regex
      --pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
    },
  },
}

