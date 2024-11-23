-- [[ Alpha ]]
--  See `:help alpha`
--  Alpha is a simple, beautiful and customizable dashboard for Neovim.
return {
  'goolord/alpha-nvim',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'
    dashboard.section.header.opts.hl = 'Conceal'

    local time = os.date '%H:%M'
    local date = os.date '%a %d %b'
    local v = vim.version()
    local version = ' v' .. v.major .. '.' .. v.minor .. '.' .. v.patch

    dashboard.section.header.val = {
      '                                                     ',
      '  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ',
      '  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ',
      '  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ',
      '  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ',
      '  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ',
      '  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ',
      '                                                     ',
    }

    dashboard.section.buttons.val = {
      dashboard.button('n', '  New File', ':ene <BAR> startinsert <CR>'),
      dashboard.button('f', '  Find File', ':Telescope find_files <CR>'),
      dashboard.button('e', '  File Explorer', ':Neotree<CR>'),
      dashboard.button('r', '  Recent Files', ':Telescope oldfiles <CR>'),
      dashboard.button('c', '  Configuration', ':e ~/.config/nvim/init.lua <CR>'),
      dashboard.button('q', '  Quit Neovim', ':qa<CR>'),
    }
    alpha.setup(dashboard.opts)
    vim.cmd [[autocmd FileType alpha setlocal nofoldenable]]
  end,
}
