--[[
similar to bufferline, where you can have different layout and colorscheme of buffers and tab bar.  
]]--


local M = {
  "nvim-lualine/lualine.nvim",
  event = "VimEnter",
}


local config = function()
	local theme = require("lualine.themes.gruvbox")

	-- set bg transparency in all modes
	theme.normal.c.bg = nil
	theme.insert.c.bg = nil
	theme.visual.c.bg = nil
	theme.replace.c.bg = nil
	theme.command.c.bg = nil

	require("lualine").setup({
		options = {
			theme = "OceanicNext", --molokai, codedark, gruvbox_dark, gruvbox light, gruvbox_material, iceberg_dark, iceberg_light, jellybeans, material, modus-vivendi, moonfly, nightfly, OceanicNext, nord, onedark, onelight, palenight, paperolor_dark, papercolor_light, powerline, powerline_dark, pywal, solarized_dark, solarized_light, horizon, dracula, everforest, base16,
			globalstatus = true,
		},
		tabline = {
			lualine_a = { "mode" },
			lualine_b = { "buffers" },
			lualine_x = { "encoding", "fileformat", "filetype" },
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
		sections = {},
	})
end




return 


{
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = config,
}

