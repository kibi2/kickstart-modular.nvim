-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
return {
  'freddiehaddad/feline.nvim',
  opts = {},
  config = function(_, opts)
    require('feline').setup()
    require('feline').winbar.setup() -- to use winbar
    require('feline').statuscolumn.setup() -- to use statuscolumn

    require('feline').use_theme() -- to use a custom theme
  end,
}
