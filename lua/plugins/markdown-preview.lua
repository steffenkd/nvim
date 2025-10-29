--[[
Using the markdown-preview.vim plugin, you can preview Markdown in real-time with a web browser.

" Start the preview
:MarkdownPreview

" Stop the preview"
:MarkdownPreviewStop

Install nodejs and yarn before. 

]]--


local M = {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  ft = { "markdown" },
}
return M



