return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.opts.hl = "String"
    dashboard.section.header.val = {

    [[                       /\\_/\\                       ]], 
    [[                       ( o.o )                       ]],
    [[                        > ^ <                        ]],
 


    }

    -- Set menu
    dashboard.section.buttons.val = {

        dashboard.button("zk", " " .. " Zettelkasten", ":e /home/lucidebris/ipara/00-meshroom/01_genesis.md <CR>"),
        dashboard.button("zz", " " .. " New Zettel",":Telekasten new_templated_note<CR>"),
        dashboard.button("f ", "🔍 " .. " Find file", ":Telescope find_files <CR>"),
        dashboard.button("n ", " " .. " New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("r ", " " ..  " Recent files", ":Telescope oldfiles <CR>"),
        dashboard.button("t ", " " ..  " Find text", ":Telescope live_grep <CR>"),
        dashboard.button("c ", " " .. " Config",          "<cmd> lua LazyVim.pick.config_files()() <cr>"),
        dashboard.button("s ", " " .. " Restore Session", [[<cmd> lua require("persistence").load() <cr>]]),
        dashboard.button("x ", " " .. " Lazy Extras",     "<cmd> LazyExtras <cr>"),
        dashboard.button("l ", "󰒲 " .. " Lazy",            "<cmd> Lazy <cr>"),
        dashboard.button("q ", " " .. " Quit",            "<cmd> qa <cr>"),
    }







 -- Set footer

    local lazy_stats = require("lazy").stats() -- Get Lazy.nvim stats
   -- local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100) -- for handling time in milliseconds
    dashboard.section.footer.opts.hl = "String"  -- Number, String, Comment, Constant
    dashboard.section.footer.val = {
      "",
      "        If you lose, never lose the lesson.",
      " ",
      "Keyboard and text-editor are on par with the sword.",
    --  " ",
    --  "           Loaded " .. lazy_stats.count .. " plugins in " .. ms .. "ms",
    }


 alpha.setup(dashboard.opts)

   





    -- Disable folding on alpha buffer
    vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
  end,
}