require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "bash", "fish", "regex", "lua", "latex", "bibtex", "python", "html",
        "css", "typescript", "yaml", "java"
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
