--[[
A blazing fast and easy to configure Neovim statusline written in Lua.
similar to bufferline, where you can have different layout of buffers and so on. This one is from Chris at machine

lualine.nvim requires Neovim >= 0.7.

Shows in the status line at the bottom in which mode you are, by color. Insert, Normal, Replace...
]]--

local M = {
  "nvim-lualine/lualine.nvim",
  commit = "566b7036f717f3d676362742630518a47f132fff"
  event = "VeryLazy", 
}

function M.config()
  local icons = require "user.icons"
  local diff = {
    "diff",
    colored = false,
    symbols = { added = icons.git.LineAdded, modified = icons.git.LineModified, removed = icons.git.LineRemoved }, -- Changes the symbols used by the diff.
  }

  local diagnostics = {
    "diagnostics",
    sections = { "error", "warn" },
    colored = false, -- Displays diagnostics status in color if set to true.
    always_visible = true, -- Show diagnostics even if there are none.
  }

  local filetype = {
    function()
      local filetype = vim.bo.filetype
      local upper_case_filetypes = {
        "json",
        "jsonc",
        "yaml",
        "toml",
        "css",
        "scss",
        "html",
        "xml",
	"md",
      }

      if vim.tbl_contains(upper_case_filetypes, filetype) then
        return filetype:upper()
      end

      return filetype
    end,
  }

  require("lualine").setup {
    options = {
	theme = "OceanicNext", --molokai, codedark, gruvbox_dark, gruvbox light, gruvbox_material, iceberg_dark, iceberg_light, jellybeans, material, modus-vivendi, moonfly, nightfly, OceanicNext, nord, onedark, onelight, palenight, paperolor_dark, papercolor_light, powerline, powerline_dark, pywal, solarized_dark, solarized_light, horizon, dracula, everforest, base16,
      -- component_separators = { left = "", right = "" },
      -- section_separators = { left = "", right = "" },
      -- component_separators = { left = "", right = "" },
      -- section_separators = { left = "", right = "" },
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },

      ignore_focus = { "NvimTree" },
    },
    sections = {
      -- lualine_a = { {"branch", icon =""} },
      -- lualine_b = { diff },
      -- lualine_c = { "diagnostics" },
      -- lualine_x = { copilot },
      -- lualine_y = { "filetype" },
      -- lualine_z = { "progress" },
      -- lualine_a = { "mode" },
      lualine_a = { "mode" },
      lualine_b = { "branch" },
      lualine_c = { diagnostics },
      -- lualine_x = { diff, "copilot", filetype },
      lualine_x = { copilot, "filetype", "fileformat" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },
    -- extensions = { "quickfix", "man", "fugitive", "oil" },
    extensions = { "quickfix", "man", "fugitive" },
  }
end

return M


--[[

-- display wordcount but doesnt work so far:
-- https://gist.github.com/benfrain/97f2b91087121b2d4ba0dcc4202d252f#file-setup-lualine-lua-L1-L13
-- https://github.com/nvim-lualine/lualine.nvim/issues/328


local function getWords()
  if vim.bo.filetype == "md" or vim.bo.filetype == "txt" or vim.bo.filetype == "markdown" then
    if vim.fn.wordcount().visual_words == 1 then
      return tostring(vim.fn.wordcount().visual_words) .. " word"
    elseif not (vim.fn.wordcount().visual_words == nil) then
      return tostring(vim.fn.wordcount().visual_words) .. " words"
    else
      return tostring(vim.fn.wordcount().words) .. " words"
    end
  else
    return ""
  end
end

]]--



