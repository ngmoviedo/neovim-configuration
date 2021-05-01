require'nvim-treesitter.configs'.setup {
	ensure_installed = { "bash","lua","python","css","typescript","yaml" },
	highlight = {
		enable = true,
		custom_captures = {
		-- Highlight the @foo.bar capture group with the "Identifier" highlight group.
		["foo.bar"] = "Identifier",
		},
	},
	indent = {
		enable = true
	},
}

-- Vimade compatibility (experimental)
vim.g.vimade = {enabletreesitter = 1}
