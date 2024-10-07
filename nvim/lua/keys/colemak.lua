require 'keys.remap'

ColemakDH = [[
1234567890-=
qwfpbjlym;[]\
arstgneuio'
zxcdvkh,./

!@#$%^&*()_+
QWFPBJLUY:{}|
ARSTGMNEIO"
ZXCDVKH<>?
]]

vim.api.nvim_create_user_command('Colemak', function()
  -- Remap to Colemak
  remapKb(ColemakDH)

  -- Move
  vim.keymap.set({'n','v'}, 'U', '5-')
  vim.keymap.set({'n','v'}, 'E', '5+')
  vim.keymap.set({'n','o'}, 'M', 'J')

  -- Edit
  vim.keymap.set('n', 'm', 'o')
  vim.keymap.set('n', 'a', 'i')
  vim.keymap.set('n', 'y', 'a')
  vim.keymap.set('n', 'w', 'W')
  vim.keymap.set('n', 'W', 'w')
  vim.keymap.set('n', 'V', 'b')
  vim.keymap.set('n', 'v', 'B')
  vim.keymap.set('n', '<C-l>', '<C-r>')

  -- Text Move
  -- vim.cmd("nmap <A-i> ddiP")
  -- vim.cmd("nmap <A-k> ddkP")
  -- vim.cmd("nmap <A-j> dljP")
  -- vim.cmd("nmap <A-l> dlp")

  -- Tab Management  (Plugin: BarBar)
  vim.keymap.set('n', '<Leader>n', '<cmd>BufferPrevious<cr>')
  vim.keymap.set('n', '<Leader>i', '<cmd>BufferNext<cr>')
  vim.keymap.set('n', '<C-n>', '<cmd>BufferMovePrevious<cr>')
  vim.keymap.set('n', '<C-i>', '<cmd>BufferMoveNext<cr>')
  vim.keymap.set('n', '<Leader>c', '<cmd>BufferClose<cr>')

  -- General
  vim.keymap.set('n', '<Leader>w', '<cmd>w<cr>')
  vim.keymap.set('n', '<Leader>q', '<cmd>q<cr>')
  -- Highlight
  vim.opt.hlsearch = true
  vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
  vim.keymap.set('n', '<Leader>m', '<cmd>noh<cr>')
  -- Alignment
  vim.keymap.set({'n','v'}, '<Leader>a', ':EasyAlign<cr><C-x>')

  -- Telescope
  vim.keymap.set("n", "<F1>", ":Telescope<CR>")

end, {})

-- Backup ColemakDH
--ColemakDH = [[
--1234567890-=
--qwfpbjluy;[]\
--arstgmneio'
--zxcdvkh,./

--!@#$%^&*()_+
--QWFPBJLUY:{}|
--ARSTGMNEIO"
--ZXCDVKH<>?
--]]

