" Settings
let g:netrw_liststyle = 3 " Tree
let g:netrw_browse_split = 0 " Open in same buufer (does not affect the drawer)
let g:netrw_winseze = 20
let g:netrw_altv = 1 " Right splitting
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+' " Hide dot files (unhide with gh)

" Toggle netrw on F1 (drawer style)

let g:NetrwIsOpen = 0
function! ToggleNetrw()
lua << EOF
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
EOF
endfunction

nnoremap <silent><F1> :call ToggleNetrw() <CR>
inoremap <silent><F1> <ESC> :call ToggleNetrw() <CR>

" Close on F1 when inside netrw
augroup netrw_toggle_fix
	autocmd!
    autocmd filetype netrw noremap <buffer><silent><F1> :let g:NetrwIsOpen=0 <bar> bwipeout<cr>
augroup END
