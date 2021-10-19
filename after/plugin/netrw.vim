if !exists('g:vscode')
let g:netrw_liststyle = 3 " Tree
let g:netrw_browse_split = 0 " Open in same bufer (does not affect the drawer)
let g:netrw_winsize = 20
let g:netrw_altv = 1 " Right splitting
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+' " Hide dot files (unhide with gh)

" Bindings
" nnoremap <F1> :NvimTreeToggle<CR>

" Close netrw on F1
augroup netrw_toggle_fix
	autocmd!
    autocmd filetype netrw noremap <buffer><silent><F1> :bwipeout<cr>
augroup END
endif
