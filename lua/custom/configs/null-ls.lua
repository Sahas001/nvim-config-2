local null_ls = require "null-ls"

local b = null_ls.builtins
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt,                                                    -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  --Go
  b.formatting.gofumpt,
  b.formatting.goimports_reviser,
  b.formatting.golines,
  -- b.diagnostics.golangci_lint,

  -- cpp
  b.formatting.clang_format,
}

local on_attach = function(client, bufnr)
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format { bufnr = bufnr }

        local diagnostics = vim.diagnostic.get(bufnr)
        vim.lsp.buf.code_action {
          context = { only = { "source.organizeImports" }, diagnostics = diagnostics },
          apply = true,
        }
      end,
    })
  else
    vim.api.nvim_clear_autocmds {
      buffer = bufnr,
    }
  end
end

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = on_attach,
}
