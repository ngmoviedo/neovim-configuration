-- Autocompletion (compe)
vim.o.completeopt = "menuone,noselect"

require'compe'.setup {
    enabled = true,
    autocomplete = true,
    debug = false,
    min_length = 1,
    preselect = 'enable',
    throttle_time = 80,
    source_timeout = 200,
    incomplete_delay = 400,
    max_abbr_width = 100,
    max_kind_width = 100,
    max_menu_width = 100,
    documentation = true,

    source = {
        path = true,
        buffer = true,
        calc = true,
        nvim_lsp = true,
        nvim_lua = true,
        spell = true,
        ultisnips = true,
        treesitter = false,
        tags = true
    }
}

-- Mappings
-- Disable all of UltiSnip's default mappings
vim.g.UltiSnipsExpandTrigger = "<NUL>"
vim.g.UltiSnipsListSnippets = "<NUL>"
vim.g.UltiSnipsJumpForwardTrigger = "<NUL>"
vim.g.UltiSnipsJumpBackwardTrigger = "<NUL>"

local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true, expr = true}

-- Compe (autocompletion) mappings
map('i', '<C-Space>', [[compe#complete()]], opt)
map('i', '<CR>',
    [[compe#confirm(lexima#expand('<LT>CR>', 'i'))]], opt) -- compatibility with lexima
map('i', '<C-e>', [[compe#close('<C-e>')]], opt)

-- Use (shift-)tab to:
--- move to prev/next item in completion menu
--- jump to the prev/next snippet placeholder
--- insert a simple tab
--- cycle through the completion menu

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

_G.tab_completion = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-n>"
    elseif vim.fn["UltiSnips#CanExpandSnippet"]() == 1 or
        vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
        return t "<C-R>=UltiSnips#ExpandSnippetOrJump()<CR>"
    else
        return t "<Tab>"
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
map('i', "<Tab>", 'v:lua.tab_completion()', opt)
map('s', "<Tab>", 'v:lua.tab_completion()', opt)
map('i', "<S-Tab>", 'v:lua.shift_tab_completion()', opt)
map('s', "<S-Tab>", 'v:lua.shift_tab_completion()', opt)
