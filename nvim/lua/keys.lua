-- Layout Selection
Colemak = vim.env.ColemakDH == "1"
require 'keys.colemak'
--require 'keys.sk'
vim.api.nvim_create_user_command('Colemak', function() remapKb(ColemakDH) end, {})
if not Colemak then require 'keys.sk' end
if Colemak then vim.cmd.Colemak() end

