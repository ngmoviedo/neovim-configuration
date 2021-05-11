-- Snippets support
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true;
capabilities.textDocument.completion.completionItem.resolveSupport =
    {properties = {'documentation', 'detail', 'additionalTextEdits'}}

local on_attach = function(client, bufnr)
    vim.api.nvim_set_current_dir(client.config.root_dir) -- Go to project's root directory
    local function buf_set_keymap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    local function buf_set_option(...)
        vim.api.nvim_buf_set_option(bufnr, ...)
    end

    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local opts = {noremap = true, silent = true}
    buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>',
                   opts)
    buf_set_keymap('n', '<space>wa',
                   '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wr',
                   '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wl',
                   '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>',
                   opts)
    buf_set_keymap('n', '<space>D',
                   '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>',
                   opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', '<space>e',
                   '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>',
                   opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>',
                   opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>',
                   opts)
    buf_set_keymap('n', '<space>q',
                   '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

    -- Set some keybinds conditional on server capabilities
    if client.resolved_capabilities.document_formatting then
        buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>",
                       opts)
    end
    if client.resolved_capabilities.document_range_formatting then
        buf_set_keymap("v", "<space>f",
                       "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
    end

    -- Set autocommands conditional on server_capabilities
    if client.resolved_capabilities.document_highlight then
        vim.api.nvim_exec([[
      hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
      hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
      hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
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

-- Texlab
require'lspconfig'.texlab.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    root_dir = lspconfig.util.root_pattern {".gitmodules"} or
        lspconfig.util.root_pattern {".git"}
}

-- bash
require'lspconfig'.bashls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    root_dir = lspconfig.util.root_pattern {".git"}
}

-- Jedi language server
require'lspconfig'.jedi_language_server.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    root_dir = lspconfig.util.root_pattern {".git"}
}

-- vimls
require'lspconfig'.vimls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

-- Lua
--- set the path to the sumneko installation
local sumneko_root_path = '/usr/share/lua-language-server'
local sumneko_binary = '/usr/bin/lua-language-server'

require'lspconfig'.sumneko_lua.setup {
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

-- Linters and formatters (efm-lang-server)
require"lspconfig".efm.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    root_dir = lspconfig.util.root_pattern {".git"},
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
            tex = {{formatCommand = "latexindent"}},
            lua = {{formatCommand = "lua-format -i", formatStdin = true}}
        }
    },
    filetypes = {'matlab', 'fish', 'pandoc', 'tex', 'lua'}
}

-- Diagnostic signs
vim.fn.sign_define("LspDiagnosticsSignError", {text = ' '})
vim.fn.sign_define("LspDiagnosticsSignWarning", {text = ' '})
vim.fn.sign_define("LspDiagnosticsSignInformation", {text = ' '})
vim.fn.sign_define("LspDiagnosticsSignHint", {text = ' '})
