--[[
Using the markdown-preview.vim plugin, you can preview Markdown in real-time with a web browser.

" Start the preview
:MarkdownPreview

" Stop the preview"
:MarkdownPreviewStop

Install nodejs and yarn before. 
sudo dnf install nodejs yarn
 
If it still does not work, delete the plugin from /local/share/nvm/... and let plugin reinstall itself again
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






--[[

local M = {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
}

return M

]]--




--[[

local M = {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
   -- build = function() vim.fn["mkdp#util#install"]() end,
}

return M

]]--


--[[

return {
  "iamcco/markdown-preview.nvim",
  build = " cd app && npm install",

  enabled = true,
  ft = "markdown",
}

]]--

