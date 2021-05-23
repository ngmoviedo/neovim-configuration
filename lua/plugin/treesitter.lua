require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "bash", "fish", "regex", "lua", "latex", "python", "html", "css", "typescript", "yaml"
    },
    highlight = {
        enable = true,
        disable = {"latex"} -- no highlighting for latex
    },
    indent = {enable = true},
    rainbow = {enable = true}
}

-- Vimade compatibility (experimental)
-- vim.g.vimade = {enabletreesitter = 1}
