-- [[ Todo Comments ]]
--  See `:help todo-comments`
--  Highlights TODO, FIXME, etc. comments in your code
return {
  'folke/todo-comments.nvim',
  event = 'VimEnter',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    signs = false,
  },
}
