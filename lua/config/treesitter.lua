require'nvim-treesitter.configs'.setup {
	ensure_installed = { "bash","lua","latex","python","css","typescript","yaml" },
	highlight = {
		enable = true,
        disable = {"latex"}, -- no highlighting for latex
	},
	indent = {
		enable = true
	},
	autopairs = {
		enable = true
	}
}

-- Vimade compatibility (experimental)
vim.g.vimade = {enabletreesitter = 1}
