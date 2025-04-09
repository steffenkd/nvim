--[[
vimwiki: personal wiki with markdown and hyperlinks; Shortcut: Leader+ww

Basic key bindings
<Leader>ww -- Open default wiki index file.
<Leader>wt -- Open default wiki index file in a new tab.
<Leader>ws -- Select and open wiki index file.
<Leader>wd -- Delete wiki file you are in.
<Leader>wr -- Rename wiki file you are in.
<Enter> -- Follow/Create wiki link.
<Shift-Enter> -- Split and follow/create wiki link.
<Ctrl-Enter> -- Vertical split and follow/create wiki link.
<Backspace> -- Go back to parent(previous) wiki link.
<Tab> -- Find next wiki link.
<Shift-Tab> -- Find previous wiki link.


:Vimwiki2HTML -- Convert current wiki link to HTML.
:VimwikiAll2HTML -- Convert all your wiki links to HTML.
:help vimwiki-commands -- List all commands.
:help vimwiki -- General vimwiki help docs.

= Header1 =
== Header2 ==
=== Header3 ===


*bold* -- bold text
_italic_ -- italic text

wiki link -- wiki link double brackets
wiki link|description -- wiki link with description double brackets
Lists
* bullet list item 1
    - bullet list item 2
    - bullet list item 3
        * bullet list item 4
        * bullet list item 5
* bullet list item 6
* bullet list item 7
    - bullet list item 8
    - bullet list item 9

1. numbered list item 1
2. numbered list item 2
    a) numbered list item 3
    b) numbered list item 4

]]--






local M = {
  "vimwiki/vimwiki", -- plugin location
  commit = "0bb1b4945bb205a076a35b66174e5d66be8eaafe", -- commit hash
  event = { "VeryLazy" }, --events that trigger this plugin
  init = function() 
        vim.g.vimwiki_list = {
            {
            path = '~/sync_small/zettelkasten',
            syntax = 'markdown',
            ext = '.md',
            },
        }
--  dependencies = { -- this is used to contain dependencies for this plugin that will be loaded when this plugin is loaded
  --  {
    --  "famiu/bufdelete.nvim",
    --  commit = "8933abc09df6c381d47dc271b1ee5d266541448e",
--    },
--  },
--}

--function M.config() -- this is where we configure the plugin
  --require("vimwiki").setup { -- you call the setup function here of the plugin
    -- inside here will have all the configs for the plugin just like you had in packer


end


}

return M










--[[

return
{
"vimwiki/vimwiki", 
    init = function() 
        vim.g.vimwiki_list = {
            {
            path = '~/zettelkasten/000_genesis.md',
            syntax = 'markdown',
            ext = '.md',
            },
        }
    end,
    },

]]--




--[[

local M = {
  "vimwiki/vimwiki",
  event = "VeryLazy",
  --commit = "",
}

M.config = function()
  vim.g.vimwiki_list = {
    {
        path = '~/zettelkasten/000_genesis.index',
        syntax = 'markdown',
        ext = '.md',
    },
}
  
end

return M

]]--



--[[

return {
  {
    "vimwiki/vimwiki",
    event = "VeryLazy",
    init = function()
        vim.g.vimwiki_list = {
    {
        path = '~/documents/vimwiki/',
        syntax = 'markdown',
        ext = '.md',
    }
}
    end,
  },
}

]]--



--vimwiki standard loading
--[[

return {
  { "vimwiki/vimwiki" },
}

]]--






--[[

return {
  {
    "vimwiki/vimwiki",
    init = function()
      vim.g.vimwiki_list = {
        { "path" = "~/zettelkasten", "syntax" = "markdown", "ext" = ".md" },
 --       { path = '~/st/pm/work_notes', syntax = 'markdown', ext = '.md', links_space_char = '-' }, --you can have different folders
      }
      vim.g.vimwiki_ext2syntax = { ['.md'] = 'markdown', ['.markdown'] = 'markdown', ['.mdown'] = 'markdown' }
      vim.g.vimwiki_use_mouse = 1
      vim.g.vimwiki_markdown_link_ext = 1
    end,
  },
}

]]--






