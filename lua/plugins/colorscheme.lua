



--polirritmico/monokai-nightasty colorscheme with light and dark colorschemes; good one

return {

  { "polirritmico/monokai-nightasty.nvim",
   lazy = false, 
  -- priority = 1000,
 },


  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai-nightasty",

    },
  }
}









--rebelot-kanagawa colorscheme with light and dark colorschemes
--[[

return {

  { "rebelot/kanagawa.nvim" },


  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-dragon",
    },
  }
}


]]--







--gruvbox-material colorscheme
--[[

return {
  -- add gruvbox
  { "wittyjudge/gruvbox-material.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}

]]--








--nyoom-engineering/oxocarbon.nvim colorscheme with light and dark colorschemes:
--[[
return {

  { "nyoom-engineering/oxocarbon.nvim" },


  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "oxocarbon",
    },
  }
}

]]--







--rafamadriz/neon colorscheme with light and dark colorschemes:
--not good, requires github login
--[[
return {

  { "rafamadriz/neon.nvim" },


  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "neon",
    },
  }
}

]]--






--use 'tanvirtin/monokai.nvim'
-- options: monokai, monokai_pro, monokai_soda, monokai_ristretto


--[[
return {

  { "tanvirtin/monokai.nvim" },


  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai_soda",
    },
  }
}
]]--





-- catppuccin 
--[[
return 
{ "catppuccin/nvim"},
{
name = "catppuccin", priority = 1000 
}
]]--





--use gruvbox

--[[
return {
  { "ellisonleao/gruvbox.nvim"},

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  }
}
]]--




-- nightfox

--[[
return {
	 "EdenEast/nightfox.nvim", 
	 lazy = false,
	 priority = 999,
	 config = function()
		 vim.cmd('colorscheme nightfox')
	 end
 }

]]--





-- use tokyonight
-- options: moon, night, day, storm

--[[

local M = {
  "folke/tokyonight.nvim",
  commit = "e52c41314e83232840d6970e6b072f9fba242eb9",
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
}

M.name = "tokyonight-night"
function M.config()
  local status_ok, _ = pcall(vim.cmd.colorscheme, M.name)
  if not status_ok then
    return
  end
end

return M


]]--



-- use primer_dark
-- options: primer_dark
--[[

local M = {
  "LunarVim/primer.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  commit = "b8d7e08eed9a61eb2f49b9196b01f7f2932735ff",
}

function M.config()
  vim.cmd.colorscheme "primer_dark"
end

return M


]]--





-- gruvbox
--[[
return
  { "ellisonleao/gruvbox.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
]]--


