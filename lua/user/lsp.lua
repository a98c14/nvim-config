-- Typescript
require('lspconfig').tsserver.setup{}
-- Go
require('lspconfig').gopls.setup{}
-- Docker
require('lspconfig').dockerls.setup{}
-- Lua
require('lspconfig').sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
-- C#
local pid = vim.fn.getpid()
-- On linux/darwin if using a release build, otherwise under scripts/OmniSharp(.Core)(.cmd)
-- local omnisharp_bin = "/path/to/omnisharp-repo/run"
-- on Windows
local omnisharp_bin = "C:\\Users\\selim\\lsp\\omnisharp-win-x64-net6.0"
require('lspconfig').omnisharp.setup{
    cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
    ...
}
-- ESLint
require'lspconfig'.eslint.setup{}
