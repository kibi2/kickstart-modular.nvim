-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
return {
  'rmehri01/onenord.nvim',
  -- lazy = true,
  -- theme = "light",
  priority = 1000,
  --opts = {
  config = function()
    require('onenord').setup {
      borders = true,
      fade_nc = false,
      styles = {
        comments = 'NONE',
        strings = 'NONE',
        keywords = 'bold',
        functions = 'bold',
        variables = 'NONE',
        diagnostics = 'underline',
      },

      disable = {
        background = true,
      },

      custom_colors = {
        mypink = '#FFB2CC',
      },
      -- local colors = require('onenord.colors').load()
      custom_highlights = {
        MatchParen = { style = 'bold,underline' },
        -- gitsigns 修正
        GitSignsAddLnInline = { style = 'underline' },
        GitSignsChangeLnInline = { style = 'underline' },
        GitSignsDeleteLnInline = { style = 'bold,underline' },
      },
    }
  end,
}
