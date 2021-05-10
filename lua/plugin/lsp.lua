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

-- Go to project's root directory
local on_attach = function(client)
    vim.api.nvim_set_current_dir(client.config.root_dir)
end

-- LSP servers
local lspconfig = require'lspconfig'

-- Texlab
require'lspconfig'.texlab.setup{
    on_attach = on_attach;
    capabilities = capabilities;
    root_dir = lspconfig.util.root_pattern{".gitmodules"} or lspconfig.util.root_pattern{".git"}
}

-- bash
require'lspconfig'.bashls.setup{
    on_attach = on_attach;
    capabilities = capabilities;
    root_dir = lspconfig.util.root_pattern{".git"}
}

-- Jedi language server
require'lspconfig'.jedi_language_server.setup{
    on_attach = on_attach;
    capabilities = capabilities;
    root_dir = lspconfig.util.root_pattern{".git"}
}

-- vimls
require'lspconfig'.vimls.setup{
    on_attach = on_attach;
    capabilities = capabilities
}

-- Lua
--- set the path to the sumneko installation
local sumneko_root_path = '/usr/share/lua-language-server'
local sumneko_binary = '/usr/bin/lua-language-server'

require'lspconfig'.sumneko_lua.setup {
  capabilities = capabilities;
  on_attach = on_attach;
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
        -- Get the language server to recognize the `vim` and the `use` global
        globals = {'vim', 'use'},
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
-- Table of severities
local severity = {}
severity['0']='I'
severity['1']='W'
severity['2']='W'
severity['3']='E'

require "lspconfig".efm.setup {
    on_attach = on_attach;
    root_dir = lspconfig.util.root_pattern{".git"};
    init_options = {
        documentFormatting = true,
        },
    settings = {
        rootMarkers = {".git/"},
        languages = {
            matlab = {
                {
                    lintCommand = "/usr/bin/mlint -severity",
                    lintStdin = false,
                    lintStderr = true,
                    lintIgnoreExitCode = true,
                    lintFormats = {
                        'L %l (C %c): ML%t: %m',
                        'L %l (C %c-%*[0-9]): ML%t: %m'
                    },
                    lintCategoryMap = severity,
                }
            },
            fish = {
                {
                    lintCommand = "/usr/bin/fish -n",
                    lintStdin = false,
                    lintStderr = true,
                    lintFormats = {
                        '%f (line %l): %m'
                    }
                }
            }
        }
    },
    filetypes = {'matlab','fish'},
}

-- Diagnostic signs
vim.fn.sign_define("LspDiagnosticsSignError",
    {text = ' '})
vim.fn.sign_define("LspDiagnosticsSignWarning",
    {text = ' '})
vim.fn.sign_define("LspDiagnosticsSignInformation",
    {text = ' '})
vim.fn.sign_define("LspDiagnosticsSignHint",
    {text = ' '})
