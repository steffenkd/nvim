--[[
A Neovim (lua) plugin for working with a text-based, markdown zettelkasten / wiki and mixing it with a journal, based on telescope.nvim.

Highlights
Find notes by name, #tag or by searching within note text
Find daily, weekly notes by date
Vaults: Support for multiple separate note collections
Place and follow links to your notes or create new ones, with templates
Find notes that link back to your notes
Find other notes that link to the same note as the link under the cursor
Support for links to headings or specific paragraphs within specific notes or globally
Alias link names to keep everything clean and tidy
Toggle [ ] todo status
Paste images from clipboard
Insert links to images
Image previews, via catimg, viu, or extension
Calendar support
]]--



local M = {
  "renerocksai/telekasten.nvim",
   lazy = false,
 --  priority = 100,
 --  event = "VeryLazy",
 -- commit = "801425bd19d3fb511ef477bf44a1f99b82419a9c",
  dependencies = {'nvim-telescope/telescope.nvim'}
}






function M.config()





  require("telekasten").setup({
 

home = vim.fn.expand("~/vaults/"), -- Put the name of your notes directory here


vaults = {
 default = { home = vim.fn.expand("~/vaults/zettelkasten1/") },
 zettelkasten2 = { home = vim.fn.expand("~/vaults/zettelkasten2/") }, -- Put the name of your notes directory here
 zettelkasten1 = { home = vim.fn.expand("~/vaults/zettelkasten1/") },
},


-- if true, telekasten will be enabled when opening a note within the configured home
    take_over_my_home = true,

    -- auto-set telekasten filetype: if false, the telekasten filetype will not be used
    --                               and thus the telekasten syntax will not be loaded either
    auto_set_filetype = true,

    -- dir names for special notes (absolute path or subdir name)
    dailies      = "/home/yourusername/vaults/diary",
    weeklies     = "/home/yourusername/vaults//weeklies",
    templates    = "/home/yourusername/vaults/templates",

    -- image (sub)dir for pasting
    -- dir name (absolute path or subdir name)
    -- or nil if pasted images shouldn't go into a special subdir
--    image_subdir = "img",




    -- markdown file extension
    extension    = ".md",

    -- following a link to a non-existing note will create it
    follow_creates_nonexisting = true,
    dailies_create_nonexisting = true,
    weeklies_create_nonexisting = true,

    -- template for new notes (new_note, follow_link)
    -- set to `nil` or do not specify if you do not want a template
    template_new_note = "/home/yourusername/vault/templates/zettel-template.md",

   -- template for newly created daily notes (goto_today)
    -- set to `nil` or do not specify if you do not want a template
    template_new_daily = "/home/yourusername/vault/diary/daily-template.md",

    -- template for newly created weekly notes (goto_thisweek)
    -- set to `nil` or do not specify if you do not want a template
    template_new_weekly= "/home/yourusername/vaults/weeklies/weekly-template.md",

    -- image link style
    -- wiki:     ![[image name]]
    -- markdown: ![](image_subdir/xxxxx.png)
    image_link_style = "markdown",

    -- integrate with calendar-vim
    plug_into_calendar = true,
    calendar_opts = {
        -- calendar week display mode: 1 .. 'WK01', 2 .. 'WK 1', 3 .. 'KW01', 4 .. 'KW 1', 5 .. '1'
        weeknm = 4,
        -- use monday as first day of week: 1 .. true, 0 .. false
        calendar_monday = 1,
        -- calendar mark: where to put mark for marked days: 'left', 'right', 'left-fit'
        calendar_mark = 'left-fit',
    },

    -- telescope actions behavior
    close_after_yanking = false,
    insert_after_inserting = true,

    -- tag notation: '#tag', ':tag:', 'yaml-bare'
    tag_notation = "#tag",

    -- command palette theme: dropdown (window) or ivy (bottom panel)
    command_palette_theme = "ivy",

    -- tag list theme:
    -- get_cursor: small tag list at cursor; ivy and dropdown like above
    show_tags_theme = "ivy",

    -- when linking to a note in subdir/, create a [[subdir/title]] link
    -- instead of a [[title only]] link
    subdirs_in_links = true,

    -- template_handling
    -- What to do when creating a new note via `new_note()` or `follow_link()`
    -- to a non-existing note
    -- - prefer_new_note: use `new_note` template
    -- - smart: if day or week is detected in title, use daily / weekly templates (default)
    -- - always_ask: always ask before creating a note
    template_handling = "smart",

    -- path handling:
    --   this applies to:
    --     - new_note()
    --     - new_templated_note()
    --     - follow_link() to non-existing note
    --
    --   it does NOT apply to:
    --     - goto_today()
    --     - goto_thisweek()
    --
    --   Valid options:
    --     - smart: put daily-looking notes in daily, weekly-looking ones in weekly,
    --              all other ones in home, except for notes/with/subdirs/in/title.
    --              (default)
    --
    --     - prefer_home: put all notes in home except for goto_today(), goto_thisweek()
    --                    except for notes with subdirs/in/title.
    --
    --     - same_as_current: put all new notes in the dir of the current note if
    --                        present or else in home
    --                        except for notes/with/subdirs/in/title.
    new_note_location = "smart",

    -- should all links be updated when a file is renamed
    rename_update_links = true,




})
end

return M

