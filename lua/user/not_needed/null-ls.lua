--[[
Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua.
]]--









local M = {
  "jose-elias-alvarez/null-ls.nvim",
}

function M.config()
  local null_ls = require "null-ls"

  --local formatting = null_ls.builtins.formatting

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.completion.spell,
    },
})











--[[

  null_ls.setup {
    sources = {
      formatting.stylua,
      formatting.prettier,
      formatting.prettier.with {
        extra_filetypes = { "toml" },
        -- extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
      },
      -- null_ls.builtins.diagnostics.eslint,
      --null_ls.builtins.completion.spell,
    },
  }
]]--



end

return M
