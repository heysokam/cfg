-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\',        ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
    { '<leader>e', ':Neotree toggle<CR>', { desc = 'NeoTree toggle' } },
  },
  opts = {
    filesystem = {
      window = {
        width = 30,
        mappings = {
          ['\\'] = 'close_window',
          ['H']  = 'show_file_details',
          ['i']  = false,
        },
      },
      buffers = {
        follow_current_file = {
          enabled         = true,  -- Find and focus the active buffer file every time the current file is changed while the tree is open.
          leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
        },
      },
      follow_current_file = {
        enabled         = true,  -- Find and focus the active buffer file every time the current file is changed while the tree is open.
        leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
      },
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignore = false,
        hide_hidden = false,
      },
    },
  },
}
