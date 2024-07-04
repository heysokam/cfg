-- Check whether the vscode-neovim extension is loaded
local isVSnvim = function()
  local check = function()
    local vs = require("vscode-neovim")
  end
  return pcall(check)
end
VSnvim = isVSnvim()
