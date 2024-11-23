-- [[ Neo-tree ]]
--  See `:help neo-tree`
--  Neo-tree is a file manager for Neovim, inspired by NERDTree for Vim.
return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>', { desc = 'Toggle neo-tree' })
    vim.keymap.set('n', '<leader>bf', ':Neotree buffers reveal float<CR>', { desc = 'Reveal buffer in neo-tree' })
  end,
}
