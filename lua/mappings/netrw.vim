" Toggle netrw on F1
nnoremap <silent> <F1> :Lexplore<cr>

" Close on F1 when inside netrw
augroup netrw_toggle_fix
	autocmd!
        autocmd filetype netrw call Change_f1_mapping()
augroup END
function! Change_f1_mapping()
	noremap <buffer> <F1> :Lexplore<cr>
endfunction

