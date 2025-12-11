-- NOTE: keymaps.lua の上書き

-- バッファの切り替え
local opt_silent = { silent = true }
vim.keymap.set('n', '[b', ':bprevious<CR>', opt_silent)
vim.keymap.set('n', ']b', ':bnext<CR>', opt_silent)
vim.keymap.set('n', '[B', ':bfirst<CR>', opt_silent)
vim.keymap.set('n', ']B', ':blast<CR>', opt_silent)

-- vim: ts=2 sts=2 sw=2 et
