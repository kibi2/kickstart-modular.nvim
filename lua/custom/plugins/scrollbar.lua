-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
return {
  'petertriho/nvim-scrollbar',
  dependencies = {
    'kevinhwang91/nvim-hlslens', 'lewis6991/gitsigns.nvim',
  },
  config = function()
    require('scrollbar').setup()
    require('scrollbar.handlers.search').setup()
    require("scrollbar.handlers.gitsigns").setup()
  end,
}
