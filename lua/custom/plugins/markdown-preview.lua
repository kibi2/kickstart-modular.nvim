-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
return {
  'iamcco/markdown-preview.nvim',
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  build = 'cd app && npm install',
  init = function()
    vim.g.mkdp_filetypes = { 'markdown' }
  end,

  ft = { 'markdown' },
  keys = {
    {
      mode = 'n',
      'gp',
      '<cmd>MarkdownPreviewToggle<CR>',
      desc = 'Markdown Preview Toggle',
    },
  },
}
