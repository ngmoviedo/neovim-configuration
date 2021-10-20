if vim.fn.exists('g:vscode')==0 then
-- Snippets support
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true;
capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {'documentation', 'detail', 'additionalTextEdits'}
}

local on_attach = function(client, bufnr)
    vim.api.nvim_set_current_dir(client.config.root_dir) -- Go to project's root directory
    local function map(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function set(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    set('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local opts = {noremap = true, silent = true}
    map('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    map('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    map('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    map('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>',
        opts)
    map('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>',
        opts)
    map('n', '<space>wl',
        '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>',
        opts)
    map('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    if client.resolved_capabilities.rename then
        map('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    else
        -- Simpler non-LSP way of renaming words
        map('n', '<space>rn', [[:%s/\<<C-r><C-w>\>//g<Left><Left>]],
            {noremap = true})
    end
    map('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    map('n', '<space>e',
        '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
    map('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    map('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
    map('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

    -- Set some keybinds conditional on server capabilities
    if client.resolved_capabilities.document_formatting then
        map("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
    end
    if client.resolved_capabilities.document_range_formatting then
        map("v", "<space>f", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
    end

    -- Set autocommands conditional on server_capabilities
    if client.resolved_capabilities.document_highlight then
        vim.api.nvim_exec([[
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]], false)
    end
end

-- LSP servers
local lspconfig = require 'lspconfig'
local util = lspconfig.util

-- Texlab
lspconfig.texlab.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

-- bash
lspconfig.bashls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

-- Python language server
lspconfig.pyright.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

-- vimls
lspconfig.vimls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

-- Lua
--- set the path to the sumneko installation
local sumneko_root_path = '/usr/share/lua-language-server'
local sumneko_binary = '/usr/bin/lua-language-server'

if vim.fn.has('win64')==0 then -- Haven't managed to getting it to work under Windows
lspconfig.sumneko_lua.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = vim.split(package.path, ';')
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` and the `use` globals
                globals = {'vim', 'use'}
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = {
                    [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                    [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true
                }
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {enable = false}
        }
    }
}
end

-- Java
vim.api.nvim_exec([[
    augroup lsp
        au!
        if !has('win64')
            au FileType java lua require('jdtls').start_or_attach({cmd = {'/usr/bin/jdtls'}})
        end
    augroup end
]],false)

-- CSS
lspconfig.cssls.setup {
    capabilities = capabilities,
    on_attach = on_attach,
}

-- HTML
lspconfig.html.setup {
    capabilities = capabilities,
    on_attach = on_attach,
}

-- Typescript
lspconfig.tsserver.setup{
    on_attach = on_attach,
    capabilities = capabilities,
}

-- JSON
lspconfig.jsonls.setup {
    commands = {
      Format = {
        function()
          vim.lsp.buf.range_formatting({},{0,0},{vim.fn.line("$"),0})
        end
      }
    }
}

-- Linters and formatters (efm-lang-server)
lspconfig.efm.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    init_options = {documentFormatting = true},
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
                        'L %l (C %c): ML%t: %m', 'L %l (C %c-%*[0-9]): ML%t: %m'
                    },
                    lintCategoryMap = { -- Severities
                        ['0'] = 'I',
                        ['1'] = 'W',
                        ['2'] = 'W',
                        ['3'] = 'E'
                    }
                }
            },
            fish = {
                {
                    lintCommand = "/usr/bin/fish -n",
                    lintStdin = false,
                    lintStderr = true,
                    lintFormats = {'%f (line %l): %m'}
                }
            },
            pandoc = {
                {
                    lintCommand = "markdownlint -s",
                    lintStdin = true,
                    lintFormats = {'%f:%l %m', '%f:%l:%c %m', '%f: %l: %m'},
                    formatCommand = "pandoc -f markdown -t markdown -sp --tab-stop=2"
                }
            },
            lua = {{formatCommand = "lua-format -i", formatStdin = true}}
        }
    },
    filetypes = {'matlab', 'fish', 'pandoc', 'lua'}
}

-- Diagnostic signs
local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }

for type, icon in pairs(signs) do
  local hl = "LspDiagnosticsSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- Windows specific settings
if vim.fn.has('win64')==1 then
    -- CSS
    lspconfig.cssls.setup{cmd = { "vscode-css-language-server.cmd", "--stdio" }}

    -- HTML
    lspconfig.html.setup{cmd = { "vscode-html-language-server.cmd", "--stdio" }}

    -- Typescript
    lspconfig.tsserver.setup{cmd = { "typescript-language-server.cmd", "--stdio" }}

    -- JSON
    lspconfig.jsonls.setup{cmd = { "vscode-json-language-server.cmd", "--stdio" }}

    -- vimls
    lspconfig.vimls.setup{cmd = { "vim-language-server.cmd", "--stdio" }}

    -- pyright
    lspconfig.pyright.setup{cmd = { "pyright-langserver.cmd", "--stdio" }}
end

end
