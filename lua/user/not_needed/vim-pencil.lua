--[[
The pencil plugin aspires to make Vim as powerful a tool for writers as it is for coders by focusing narrowly on the handful of tweaks needed to smooth the path to writing prose.

For editing prose-oriented file types such as text, markdown, mail, rst, tex, textile, and asciidoc
Agnostic on soft line wrap versus hard line breaks, supporting both
Auto-detects wrap mode via modeline and sampling
Adjusts navigation key mappings to suit the wrap mode
Creates undo points on common punctuation during Insert mode, including deletion via line <C-U> and word <C-W>
Buffer-scoped configuration (with a few minor exceptions, pencil preserves your global settings)
Support for Vim’s Conceal feature to hide markup defined by Syntax plugins (e.g., _ and * markup for styled text in _Markdown_)
Support for display of mode indicator (␍ and ⤸, e.g.) in the status line
Pure Vimscript with no dependencies
In addition, when using hard line break mode:

Makes use of Vim’s powerful autoformat while inserting text, except for tables and code blocks where you won’t want it.
NEW Optional key mapping to suspend autoformat for the Insert.
Need spell-check, distraction-free editing, and other features? Vim is about customization. To complete your editing environment, learn to configure Vim and draw upon its rich ecosystem of plugins.



Initializing by command
You can manually enable, disable, and toggle pencil as a command:

Pencil - initialize pencil with auto-detect for the current buffer
NoPencil (or PencilOff) - removes navigation mappings and restores buffer to global settings
TogglePencil (or PencilToggle) - if on, turns off; if off, initializes with auto-detect
Because auto-detect might not work as intended, you can invoke a command to set the behavior for the current buffer:

SoftPencil (or PencilSoft) - initialize pencil with soft line wrap mode
HardPencil (or PencilHard) - initialize pencil with hard line break mode (and Vim’s autoformat)


]]--



return {
  { "reedes/vim-pencil" },
}
