--[[
Neovim's default :bdelete command can be quite annoying, since it also messes up your entire window layout by deleting windows. bufdelete.nvim aims to fix that by providing useful commands that allow you to delete a buffer without messing up your window layout.
]]--

local M = {
  "famiu/bufdelete.nvim",
  event = "VeryLazy",
  commit = "07d1f8ba79dec59d42b975a4df1c732b2e4e37b4",
}

function M.config()
  local keymap = vim.keymap.set
  local opts = { noremap = true, silent = true }
  -- keymap("n", "Q", "<cmd>Bdelete!<CR>", opts)
  keymap("n", "Q", ":lua require('bufdelete').bufdelete(0, false)<cr>", opts)
end

return M
