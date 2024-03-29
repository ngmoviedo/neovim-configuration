﻿if vim.fn.exists('g:vscode')==0 then
require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "bash", "fish", "regex", "lua", "latex", "bibtex", "python", "html",
        "css", "typescript", "yaml", "java", "javascript"
    },
    highlight = {
        enable = true,
        disable = {"latex"} -- no highlighting for latex
    },
    indent = {enable = true},
    rainbow = {enable = true}
}

-- Vimade compatibility (experimental)
vim.g.vimade = {enabletreesitter = 1}
end
