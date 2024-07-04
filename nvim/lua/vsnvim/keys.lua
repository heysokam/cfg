-- General
vim.cmd("nmap <space> <Leader>")

-- Move
vim.cmd("noremap j h")
vim.cmd("noremap i k")
vim.cmd("noremap k j")
vim.cmd("noremap w W")
vim.cmd("noremap W w")
vim.cmd("noremap b B")
vim.cmd("noremap B b")
vim.cmd("nmap I 5-")
vim.cmd("nmap K 5+")
vim.cmd("noremap H J")

-- Edit
vim.cmd("noremap h o")
vim.cmd("noremap a i")
vim.cmd("noremap o a")
-- Text Move
vim.cmd("nmap <A-i> ddP")
vim.cmd("nmap <A-k> ddkP")
vim.cmd("nmap <A-j> dljP")
vim.cmd("nmap <A-l> dlp")


-- VScode Actions
-- local vs = require 'vscode-neovim'
-- do
--   vs.action("workbench.action.findInFiles", { args = { { query = vim.fn.expand('<cword>') } } })
-- end
