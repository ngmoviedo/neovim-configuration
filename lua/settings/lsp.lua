-- Snippets support

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true;
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

-- LSP servers
-- Texlab
require'lspconfig'.texlab.setup{capabilities=capabilities}

-- bash
require'lspconfig'.bashls.setup{capabilities=capabilities}

-- Jedi language server
require'lspconfig'.jedi_language_server.setup{capabilities=capabilities}

-- vimls
require'lspconfig'.vimls.setup{capabilities=capabilities}

-- Lua
--- set the path to the sumneko installation
local sumneko_root_path = '/usr/share/lua-language-server'
local sumneko_binary = '/usr/bin/lua-language-server'

require'lspconfig'.sumneko_lua.setup {
  capabilities = capabilities;
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
        },
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

-- Linters (efm-lang-server)
require "lspconfig".efm.setup {
    init_options = {
        documentFormatting = true,
        },
    filetypes = {'matlab','fish'},
}

-- Pictograms
require('lspkind').init()
