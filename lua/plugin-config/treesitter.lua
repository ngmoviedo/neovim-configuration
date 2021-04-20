require'nvim-treesitter.configs'.setup {
	ensure_installed = { "latex","bash","lua","python" },
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