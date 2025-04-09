--[[
Single tabpage interface for easily cycling through diffs for all modified files for any git rev.
Introduction
Vim's diff mode is pretty good, but there is no convenient way to quickly bring up all modified files in a diffsplit. This plugin aims to provide a simple, unified, single tabpage interface that lets you easily review all changed files for any git rev.
]]--




local M = {
  "sindrets/diffview.nvim",
  event = "VeryLazy",
  commit = "d38c1b5266850f77f75e006bcc26213684e1e141",
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
}

function M.config() end

return M
