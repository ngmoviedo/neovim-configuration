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

-- pyright
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

-- Autocompletion (compe)
vim.o.completeopt = "menuone,noselect"

require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    spell = true;
    ultisnips = true;
    treesitter =true;
  };
}

local keymap=vim.api.nvim_set_keymap
keymap('i', '<C-Space>', [[compe#complete()]], {noremap=true, silent=true, expr=true})
-- Make compe#complete compatible with pear-tree
keymap('i', '<CR>', [[compe#confirm({ 'keys': "\<Plug>(PearTreeExpand)", 'mode': '' })]], {noremap=true, silent=true, expr=true})
keymap('i', '<C-e>', [[compe#close('<C-e>')]], {noremap=true, silent=true, expr=true})

-- Disable all of UltiSnip's default mappings
vim.g.UltiSnipsExpandTrigger = "<NUL>"
vim.g.UltiSnipsListSnippets = "<NUL>"
vim.g.UltiSnipsJumpForwardTrigger = "<NUL>"
vim.g.UltiSnipsJumpBackwardTrigger = "<NUL>"

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

-- Use (shift-)tab to:
--- move to prev/next item in completion menu
--- jump to the prev/next snippet placeholder
--- insert a simple tab
--- cycle through the completion menu
_G.tab_completion = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif vim.fn["UltiSnips#CanExpandSnippet"]() == 1 or vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
    return  t "<C-R>=UltiSnips#ExpandSnippetOrJump()<CR>"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end
_G.shift_tab_completion = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  elseif vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
    return t "<C-R>=UltiSnips#JumpBackwards()<CR>"
  else
    return t "<S-Tab>"
  end
end
keymap('i', "<Tab>", 'v:lua.tab_completion()', {expr = true})
keymap('s', "<Tab>", 'v:lua.tab_completion()', {expr = true})
keymap('i', "<S-Tab>", 'v:lua.shift_tab_completion()', {expr = true})
keymap('s', "<S-Tab>", 'v:lua.shift_tab_completion()', {expr = true})

