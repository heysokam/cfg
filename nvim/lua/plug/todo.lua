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
    highlight = {
      --multiline = true, -- enable multine todo comments
      --multiline_pattern = "^.", -- lua pattern to match the next multiline from the start of the matched keyword
      --multiline_context = 10, -- extra lines that will be re-evaluated when changing a line
      before = "", -- "fg" or "bg" or empty
      keyword = "wide_fg", -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
      after = "", -- "fg" or "bg" or empty
      --pattern = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlighting (vim regex)
      --comments_only = true, -- uses treesitter to match keywords in comments only
      --max_line_len = 400, -- ignore lines longer than this
      --exclude = {}, -- list of file types to exclude highlighting
    },
    -- list of named colors where we try to extract the guifg from the
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

