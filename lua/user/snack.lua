--[[
Nvim has given me an error and maybe this addon will make it work again
]]--


return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    toggle = {enabled = true },
    bigfile = { enabled = true },
  --  dashboard = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    notifier = { enabled = true },
  --  quickfile = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
  --  words = { enabled = true },
  },
}


