if vim.fn.exists('g:vscode') == 0 then
    vim.o.completeopt = "menu,menuone,noselect"

    -- Functions for good tab behaviour
    local has_words_before = function()
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and
                   vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(
                       col, col):match("%s") == nil
    end

    local feedkey = function(key, mode)
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true,
                                                             true), mode, true)
    end

    local cmp = require 'cmp'
    local lspkind = require 'lspkind'

    cmp.setup({
        snippet = {
            -- REQUIRED - you must specify a snippet engine
            expand = function(args)
                vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            end
        },
        mapping = {
            ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), {'i', 'c'}),
            ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), {'i', 'c'}),
            ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
            ['<C-Space>'] = cmp.mapping.complete(),
            ['<C-e>'] = cmp.mapping({
                i = cmp.mapping.abort(),
                c = cmp.mapping.close()
            }),
            ['<CR>'] = cmp.mapping.confirm({select = true}),
            ["<Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_next_item()
                elseif vim.fn["vsnip#available"](1) == 1 then
                    feedkey("<Plug>(vsnip-expand-or-jump)", "")
                elseif has_words_before() then
                    cmp.complete()
                else
                    fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
                end
            end, {"i", "s"}),

            ["<S-Tab>"] = cmp.mapping(function()
                if cmp.visible() then
                    cmp.select_prev_item()
                elseif vim.fn["vsnip#jumpable"](-1) == 1 then
                    feedkey("<Plug>(vsnip-jump-prev)", "")
                end
            end, {"i", "s"})
        },
        sources = cmp.config.sources({
            {name = 'nvim_lsp'}, {name = 'vsnip'} -- For vsnip users.
        }, {{name = 'buffer'}}),
        formatting = {format = lspkind.cmp_format()}
    })

    -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline('/', {sources = {{name = 'buffer'}}})

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(':', {
        sources = cmp.config.sources({{name = 'path'}}, {{name = 'cmdline'}})
    })

    -- Snippet directory
    vim.g.vsnip_snippet_dir = vim.fn.expand('~/.config/nvim/snippets')

    -- Use CR to:
    --- expand snippet if no option is selected on completion menu
    --- select completion menu option
    --- default behaviour if no snippet or completion is selected

    local t = function(key)
        return vim.api.nvim_replace_termcodes(key, true, true, true)
    end
    local map = vim.api.nvim_set_keymap

    _G.snippet_confirm = function()
        if vim.fn.complete_info()['selected'] == -1 and
            vim.fn.call("vsnip#expandable", {}) == 0 then
            return t '<CR>'
        else
            cmp.confirm()
        end
    end

    map("i", "<CR>", "v:lua.snippet_confirm()", {expr = true})
    map("s", "<CR>", "v:lua.snippet_confirm()", {expr = true})
end
