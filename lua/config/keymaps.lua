
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
-- keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Navigate previous locations
   -- With C-o you jump to the previously visited location.
   -- With C-i you jump one place to the front of the jumplist.
   -- With C-6 you jump between the last two buffers

--[[
The advantage of using just vim.keymap.set() is that you can create a mapping for multiple modes at once, for instance

vim.keymap.set({"n", "i"}, "<C-h>", function() print("hello") end)
Will print "hello" when you press ctrl-h in insert mode and normal mode.

Also, something that I don't think Prime is aware of is that vim.keymap.set() will do noremap automatically if the second argument is a string except when the string starts with <Plug>, which is a really useful default behavior.
]]--

-- add word to vocabulary list type "zg"
-- ]s will go to the next misspelled word.
-- [s will go to the previous misspelled word.


-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts) -- move the line between command line at bottom and buffer above
keymap("n", "<C-Down>", ":resize +2<CR>", opts) -- move the line between command line at bottom and buffer above
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts) -- move th eline between tree and buffer
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts) -- move the line between tree and buffer

-- Navigate buffers
keymap("n", "<S-j>", ":bprevious<CR>")  -- or "<S-h>"
keymap("n", "<S-k>", ":bnext<CR>") -- or "<S-l>" ; conflicts with command from nvimtree.lua (--    vim.keymap.set("n", "<S-k>", api.node.open.preview, opts "Open Preview"))

--keymap("n", "<S-j>", "<cmd>bprevious<CR>", default_opts) -- move to previous buffer in open buffers
--keymap("n", "<S-k>", "<cmd>bnext<CR>", default_opts)  -- move to next buffer in open buffers



-- Toggle Telekasten commands
keymap("n", "<leader>z", "<cmd>lua require('telekasten').panel()<CR>", opts) --show dropdown menu for all mapped Telekasten commands below, Brings up the command palette
keymap("n", "<leader>zz", "<cmd>Telekasten new_templated_note<CR>", opts) --create a new note by template, prompts for title and template
keymap("n", "<leader>zn", "<cmd>Telekasten new_note<CR>", opts) --Create a new note, prompts for title
keymap("n", "<leader>zf", "<cmd>Telekasten find_notes<CR>", opts) --Find notes by filename
keymap("n", "<leader>zs", "<cmd>Telekasten search_notes<CR>", opts) --Search (grep) IN all notes
keymap("n", "<leader>zg", "<cmd>Telekasten follow_link<CR>", opts) --Follow the link under the cursor
keymap("n", "<leader>zp", "<cmd>Telekasten insert_link<CR>", opts) --Insert a link to a note
keymap("n", "<leader>zy", "<cmd>Telekasten yank_notelink<CR>", opts) --Yank a link to the currently open note
keymap("n", "<leader>zr", "<cmd>Telekasten rename_note<CR>", opts) --Rename current note AND update the links pointing to it
keymap("n", "<leader>zt", "<cmd>Telekasten show_tags<CR>", opts) --Search through all tags
keymap("n", "<leader>zb", "<cmd>Telekasten show_backlinks<CR>", opts) --Show all notes linking to the current one
keymap("n", "<leader>zl", "<cmd>Telekasten find_friends<CR>", opts) --Show all notes linking to the link under the cursor
keymap("n", "<leader>zd", "<cmd>Telekasten goto_today<CR>", opts) --open daily template for note and create new diary entry in diary folder
keymap("n", "<leader>zi", "<cmd>Telekasten paste_img_and_link<CR>", opts) --Paste an image from the clipboard into a file and inserts a link to it
keymap("n", "<leader>zii", "<cmd>Telekasten insert_img_link<CR>", opts) --Browse images / media files and insert a link to the selected one
keymap("n", "<leader>zip", "<cmd>Telekasten preview_img<CR>", opts) --preview image under the cursor
keymap("n", "<leader>zm", "<cmd>Telekasten browse_media<CR>", opts) --Browse images / media files
keymap("n", "<leader>ztd", "<cmd>Telekasten toggle_todo<CR>", opts) --Toggle - [ ] todo status of a line
keymap("n", "<leader>zv", "<cmd>Telekasten switch_vault<CR>", opts) --Toggle vault switching
keymap("n", "<leader>zb", "<cmd>Telekasten goto_thisweek<CR>", opts) --Toggle vault switching




--Toggle Markdown Preview
keymap("n", "<leader>tm", "<cmd>MarkdownPreviewToggle<CR>", opts) -- :MarkdownPreview   :MarkdownPreviewStop

-- Toggle Zenmode
keymap("n", "<leader>tz", "<cmd>ZenMode<CR>", opts)


-- Toggle nightmode/darkmode
keymap("n", "<leader>tl", "<cmd>MonokaiToggleLight<CR>", opts)

--keymap("n", "<leader>tl", "<cmd>colorscheme tokyonight-day<CR>", opts)
--keymap("n", "<leader>td", "<cmd>colorscheme tokyonight-night<CR>", opts)

--keymap("n", "<leader>td", "<cmd>colorscheme kanagawa-dragon<CR>", opts)
--keymap("n", "<leader>th", "<cmd>colorscheme kanagawa-lotus<CR>", opts)


-- Toggle spell with ! (exclamation mark) set spell!
keymap("n", "<leader>ss", "<cmd>set spell!<CR>", opts) --the ! toggles a command (add word to wordlist with <zg>



-- Toggle Vimwiki Index File
--[[
keymap("n", "<leader>w", "<cmd>VimwikiIndex<CR>", opts)
keymap("n", "<leader>wh", "<cmd>h vimwiki-local-mappings<CR>", opts)
]]--


--Toggle "oil" folderview
--keymap("n", "<leader>m", "<cmd>Oil --float /home/luci/shard_intern/PARA/<CR>", opts)



-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
keymap("n", "<S-q>", "<cmd>bd<CR>", opts)
-- Save buffer then Close buffer
keymap("n", "<S-w>", "<cmd>w<CR><cmd>bd<CR>", opts)

-- Better paste
keymap("v", "p", "P", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Plugins --

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
--keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)







