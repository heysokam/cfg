-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- ??
vim.keymap.set("n", "<F1>", ":Telescope<CR>")


-- Cleanup key collisions
--vim.keymap.del("n", "<S>k")

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

vim.keymap.set({'n','v'}, '<Leader>a', ':EasyAlign<cr><C-x>')
--vim.cmd("nmap <Leader>a :EasyAlign<cr><C-x>")

-- Tab Management  (Plugin: BarBar)
vim.cmd("nmap <Leader>j <cmd>BufferPrevious<cr>") -- map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
vim.cmd("nmap <Leader>l <cmd>BufferNext<cr>")     -- map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.cmd("nmap <C-j> <cmd>BufferMovePrevious<cr>")
vim.cmd("nmap <C-l> <cmd>BufferMoveNext<cr>")
vim.cmd("nmap <Leader>c <cmd>BufferClose<cr>")

--________
-- nvim --
--________
-- General
vim.cmd("nmap <Leader>w :w<cr>")
vim.cmd("nmap <Leader>q :q<cr>")

-- LazyVim remaps
vim.cmd("nmap <Leader>h <cmd>noh<cr>")

