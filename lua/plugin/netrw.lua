-- Settings
vim.g.netrw_liststyle = 3
vim.g.netrw_browse_split = 0 -- (does not affect the drawer)
vim.g.netrw_winsize = 20
vim.g.netrw_altv = 1
vim.g.netrw_list_hide = [['\(^\|\s\s\)\zs\.\S\+']] -- Hide dot files (unhide with gh)

-- Mappings
-- Toggle netrw on F1 (drawer style)
vim.g.NetrwIsOpen=0

ToggleNetrw = function ()
	if vim.g.NetrwIsOpen == 1 then
		local i = vim.fn.bufnr("$")
		while i >= 1 do
			if vim.bo.filetype == "netrw" then
				vim.cmd([[ silent exe "bwipeout " . ]] .. i )
			end
			i = i-1
	        end
		vim.g.NetrwIsOpen=0
	else
		vim.g.NetrwIsOpen=1
		vim.cmd([[silent Lexplore]])
	end
end

vim.api.nvim_set_keymap('n', "<F1>", [[:lua ToggleNetrw() <CR>]], {silent = true, noremap = true})
vim.api.nvim_set_keymap('i', "<F1>", [[<ESC> :lua ToggleNetrw() <CR>]], {silent = true, noremap = true})

-- Close on F1 when inside netrw
ChangeF1Mapping = function ()
	vim.api.nvim_buf_set_keymap(0, '', '<F1>', [[:let g:NetrwIsOpen=0 | bwipeout<cr>]], {silent = true, noremap = true})
end

vim.api.nvim_exec([[
augroup netrw_toggle_fix
	autocmd!
        autocmd filetype netrw lua ChangeF1Mapping()
augroup END
]],false)
