-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
return {
  'nvim-zh/colorful-winsep.nvim',
  config = true,
  event = { 'WinNew' },
  opts = {
    hi = {
      bg = '',
      fg = '#E8AEAA',
      -- bg = '#16161E',
      -- fg = '#1F3442',
    },
    anchor = {
      left = { height = 1, x = -1, y = -1 },
      right = { height = 1, x = -1, y = 0 },
      up = { width = 0, x = -1, y = 0 },
      bottom = { width = 0, x = 1, y = 0 },
    },
  },
}
