-- [[ SuperMaven ]]
--  See `:help supermaven`
--  SuperMaven is a plugin that allows to you get code suggestions.
return {
  'supermaven-inc/supermaven-nvim',
  config = function()
    require('supermaven-nvim').setup {}
  end,
}
