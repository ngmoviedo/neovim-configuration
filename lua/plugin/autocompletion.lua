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
        vsnip = {kind = "﬌ Snippet"},
        treesitter = true,
        tags = true
    }
}

-- Mappings
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true, expr = true}

map('i', '<C-Space>', [[compe#complete()]], opt)
map('i', '<C-e>', [[compe#close('<C-e>')]], opt)

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

-- local check_back_space = function()
--     local col = vim.fn.col('.') - 1
--     if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
--         return true
--     else
--         return false
--     end
-- end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-n>"
    elseif vim.fn.call("vsnip#available", {1}) == 1 then
        return t "<Plug>(vsnip-expand-or-jump)"
    else
        return t "<Tab>"
    end
end
_G.s_tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-p>"
    elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
        return t "<Plug>(vsnip-jump-prev)"
    else
        -- If <S-Tab> is not working in your terminal, change it to <C-h>
        return t "<S-Tab>"
    end
end

map("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
map("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

-- Use CR to:
--- expand snippet if no option is selected on completion menu
--- select completion menu option
--- default behaviour if no snippet or completion is selected
vim.g.vsnip_snippet_dir = vim.fn.expand('~/.config/nvim/snippets')

_G.snippet_confirm = function()
    if vim.fn.complete_info()['selected'] == -1 then
        if vim.fn.call("vsnip#expandable", {}) == 1 then
            return t "<Plug>(vsnip-expand)"
        else
            return vim.fn['lexima#expand']('<CR>', 'i')
        end
    else
       return vim.fn['compe#confirm']()
    end
end

map("i", "<CR>", "v:lua.snippet_confirm()", {expr = true})
map("s", "<CR>", "v:lua.snippet_confirm()", {expr = true})
