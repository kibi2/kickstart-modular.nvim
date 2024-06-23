-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
return {
  'rcarriga/nvim-notify',
  opts = {
    top_down = true,
  },
  init = function()
    local notify = require 'notify'
    vim.notify = notify
    -- 通知履歴一覧表示
    local telescope = require 'telescope'
    telescope.load_extension 'notify'
    vim.keymap.set('n', '<leader>si', function()
      telescope.extensions.notify.notify()
    end, { desc = '[S]earch [I]nformation' })
  end,
}
