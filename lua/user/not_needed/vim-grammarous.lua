--[[
vim-grammarous is a powerful grammar checker for Vim. Simply do :GrammarousCheck to see the powerful checking. This plugin automatically downloads LanguageTool, which requires Java 8+.

:[range]GrammarousCheck [--lang={lang}] [--(no-)preview] [--(no-)comments-only]
Execute the grammar checker for current buffer (when [range] is specified, the target is a text in the range).

It makes LanguageTool check grammar (It takes a while)
It highlights the locations of detected grammar errors
When you move the cursor to a location of an error, it automatically shows the error with the information window (named [Grammarous]).
Please do :GrammarousCheck --help to show more detail about the command.

:GrammarousReset
Reset the current check.

Mappings
Local mappings in the information window
You can use some mappings in the information window, which is opened to show the detail of an error when the cursor moves to the error.

Mappings	Description
q	Quit the info window
<CR>	Move to the location of the error
f	Fix the error automatically
r	Remove the error without fix
R	Disable the grammar rule in the checked buffer
n	Move to the next error's location
p	Move to the previous error's location
?	Show help of the mapping in info window

]]--


return {
  { "rhysd/vim-grammarous" },
}
