-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
return {
  'b0o/incline.nvim',
  config = function()
    require('incline').setup()
  end,
  -- Optional: Lazy load Incline
  event = 'VeryLazy',
}
