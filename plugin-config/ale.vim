" Linting
" Let coc handle lsp
let g:ale_disable_lsp = 1
" Show in status bar
let g:airline#extensions#ale#enabled = 1
" Jump betwwen warnings
nmap <silent> <C-e> <Plug>(ale_previous_wrap)
nmap <silent> <C-a> <Plug>(ale_next_wrap)


