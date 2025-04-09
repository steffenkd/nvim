--[[
A lua fork of vim-devicons. This plugin provides the same icons as well as colors for each icon.

Light and dark color variants are provided.
]]--

local M = {
  "nvim-tree/nvim-web-devicons",
  event = "VeryLazy",
}
function M.config()
  local devicons = require "nvim-web-devicons"

  devicons.set_icon {
    astro = {
      --  󱓟 
      icon = "󱓞",
      color = "#FF7E33",
      name = "astro",
    },
  }
end

return M
