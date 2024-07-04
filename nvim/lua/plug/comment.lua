return {
  "terrortylor/nvim-comment",
  config = function()
    require("nvim_comment").setup({
    })
    vim.keymap.set({'n', 'v'}, '<Leader>/', ':silent CommentToggle<cr>')
  end,
}
