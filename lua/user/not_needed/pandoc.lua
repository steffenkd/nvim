--[[
Pandoc is a free-software document converter, widely used as a writing tool (especially by scholars) and as a basis for publishing workflows.”I use the Pandoc plugin for vim to export my notes to different formats when I need to.


see
hel pandoc
]]--


local M = {
  "aspeddro/pandoc.nvim",
  commit = "c6b447bf86e0d5d1f87f73105e035e240dae5002",
  event = "VeryLazy",
}

function M.config()
  require("pandoc").setup {}
end

return M






--[[

local M = {
  "aspeddro/pandoc.nvim",
   event = "VeryLazy",
 -- commit = "801425bd19d3fb511ef477bf44a1f99b82419a9c",
 -- dependencies = {'nvim-telescope/telescope.nvim'}
}

]]--