
require "user.launch"
require "user.options"
require "user.keymaps"
require "user.autocmds"


--spec "user.luarocks" --is requires for solving dependencies for plugins, didnt work and gave a lot of errors
spec "user.colorscheme" -- different colorschemes can be loaded
spec "user.devicons" --A lua fork of vim-devicons. This plugin provides the same icons as well as colors for each icon.
spec "user.treesitter" -- Tree-sitter is a parser generator tool and an incremental parsing library. It can build a concrete syntax tree for a source file and efficiently update the syntax tree as the source file is edited.
spec "user.mason" --language server, was working fine and can be activated any time but high cpu usage
--spec "user.schemastore"
--spec "user.lspconfig" --language server configuration; keymap which interacted with :nextbuffer and Shift+K - can be reactivated but needed lot of cpu power
--spec "user.navic"
--spec "user.breadcrumbs"
--spec "user.null-ls" --Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua.
--spec "user.illuminate" --Vim plugin for automatically highlighting other uses of the word under the cursor using either LSP, Tree-sitter, or regex matching.
spec "user.telescope" -- telescope.nvim is a highly extendable fuzzy finder over lists. Built on the latest awesome features from neovim core. Telescope is centered around modularity, allowing for easy customization.
spec "user.telescope-tabs" -- Fly through your tabs in neovim 
spec "user.nvimtree" -- A File Explorer For Neovim Written In Lua; another option is Fern
spec"user.oil" -- A vim-vinegar like file explorer that lets you edit your filesystem like a normal Neovim buffer.
--spec "user.fern" -- Fern (furn) is a general purpose asynchronous tree viewer written in pure Vim script. Another optionis nvimtree
--spec "user.lualine" --Shows in the status line at the bottom in which mode you are, by color. Insert, Normal, Replace. From chrismachine config. Similar to bufferline.
--spec "user.floatpreview" --giving a preview of the file which is selected in the sidebar with nvimtree. So you can see the content of the file in a small floating window. Not sure if needed in init.lua
spec "user.lualine-nvim" -- Shows in the status line at the bottom in which mode you are, by color. Insert, Normal, Replace. From Theena from Oviwrite. Similar to bufferline.
--spec "user.whichkey" -- WhichKey is a lua plugin for Neovim 0.5 that displays a popup with possible key bindings of the command you started typing. Heavily inspired by the original emacs-which-key and vim-which-key.
spec "user.cmp"
--spec "user.autopairs" --automatically add a closing bracket to an opening bracket and so on
--spec "user.comment" -- for commenting on code, probably whcih brackets and characters to use
--spec "user.gitsigns" -- Super fast git decorations implemented purely in Lua.
--spec "user.neogit"
--spec "user.diffview" -- a simple, unified, single tabpage interface that lets you easily review all changed files for any git rev.
--spec "user.indentline" --This plugin adds indentation guides (Markierungslinien, bzw. grosse Einzugsklammern um zu zeigen, was zusammengehoert und eingerueckt wurde) to Neovim. It uses Neovim's virtual text feature and no conceal
spec "user.alpha" -- startpage for neovim with graphics and keymaps what to do
spec "user.netrw" --It's not because we use netrw that we cannot have nice things! This plugin adds a layer of ✨bling✨ and configuration to your favorite file explorer.
--spec "user.project" -- project.nvim is an all in one neovim plugin written in lua that provides superior project management. Automagically cd to project directory using nvim lspDependency free, does not rely on lspconfigIf no lsp then uses pattern matching to cd to root directory
--spec "user.toggleterm" -- A neovim plugin to persist and toggle multiple terminals during an editing session
spec "user.bufdelete" -- Neovim's default :bdelete command can be quite annoying, since it also messes up your entire window layout by deleting windows.neo bufdelete.nvim aims to fix that
--spec "user.zk-nvim" -- another zettelkasten plugin
spec "user.telekasten" --zettelkasten plugin
--spec "user.bufferline" -- shows the buffer/tabs on top. Convenient when you have several tabs open and want to switch between them. Similar to lualine
--spec "user.pandoc" -- Pandoc is a free-software document converter, widely used as a writing tool (especially by scholars) and as a basis for publishing workflows.”I use the Pandoc plugin for vim to export my notes to different formats when I need to.
--spec "user.vim-wiki" --vimwiki: personal wiki with markdown and hyperlinks; Shortcut: Leader+ww
spec "user.markdown-preview" -- Using the markdown-preview.vim plugin, you can preview Markdown in real-time with a web browser.
spec "user.zen-mode" -- Distraction-free coding for Neovim >= 0.5; Toggle Zen Mode with :ZenMode ;; close the Zen window with :ZenMode, :close or :quit
--spec "user.noice" -- Highly experimental plugin that completely replaces the UI for messages, cmdline and the popupmenu.
--spec "vim-latex-preview" -- This plugin provides a live preview of the output PDF of your LaTeX file. The display of the output PDF file will be updated lively as you type (just hold the cursor and you will see the PDF file updated). Currently, vim-latex-live-preview only support UNIX-like systems. Please let me know if you have any suggestions.
--spec "user.fountain" -- Fountain is a plain text markup language for screenwriting.
--spec "user.vim-grammarous" --vim-grammarous is a powerful grammar checker for Vim. Simply do :GrammarousCheck to see the powerful checking. This plugin automatically downloads LanguageTool, which requires Java 8+.
--spec "user.vimtex" -- VimTeX is a modern Vim and Neovim filetype and syntax plugin for LaTeX files.
--spec "vim-pencil" --The pencil plugin aspires to make Vim as powerful a tool for writers as it is for coders by focusing narrowly on the handful of tweaks needed to smooth the path to writing prose.
--spec "obsidian.Nvim" --A Neovim plugin for writing and navigating an Obsidian vault, written in Lua. Built for people who love the concept of Obsidian -- a simple, markdown-based notes app -- but love Neovim too much to stand typing characters into anything else.
spec "user.snack"  --was required due to an error message, maybe it works after loading it manually

require "user.lazy"




