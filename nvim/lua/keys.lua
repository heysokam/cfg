-- Layout Selection
Colemak = vim.env.ColemakDH == "1"
require 'keys.colemak'
--require 'keys.sk'
if not Colemak then require 'keys.sk' end
if Colemak then vim.cmd.Colemak() end

