return {
  "kdheepak/lazygit.nvim",
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
  -- optional for floating window border decoration
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("telescope").load_extension("lazygit")
  end,
  -- setting the keybinding for LazyGit with 'keys' is recommended in
  -- order to load the plugin when the command is run for the first time
  keys = {
    { "<leader>gg", "<cmd>LazyGitCurrentFile<cr>", desc = "LazyGit" },
    { "<leader>gf", "<cmd>LazyGitFilterCurrentFile<cr>", desc = "LazyGit" },
    { "<leader>gF", "<cmd>LazyGitFilter<cr>", desc = "LazyGit" },
  }
}
