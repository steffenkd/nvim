--[[

Distraction-free coding for Neovim >= 0.5; Toggle Zen Mode with :ZenMode

close the Zen window with :ZenMode, :close or :quit
]]--


local M = {
  "folke/zen-mode.nvim",
 -- event = "VeryLazy",
 -- commit = "801425bd19d3fb511ef477bf44a1f99b82419a9c",
 -- dependencies = {'nvim-telescope/telescope.nvim'}
}

function M.config()


require("zen-mode").setup({
  window = {
    width = 90,
    options = {
      number = false,
      relativenumber = false,
      signcolumn = "no",
      cursorcolumn = false,
    },
  },
  plugins = {
    kitty = {
      enabled = true,
      font = "+2",
    },
  },
})
end

return M



