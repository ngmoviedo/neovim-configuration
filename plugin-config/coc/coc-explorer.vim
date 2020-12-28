let g:coc_explorer_global_presets = {
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'buffer': {
\     'sources': [{'name': 'buffer', 'expand': v:true}]
\   },
\ }

" Use preset argument to open it
nmap <space>f :CocCommand explorer --preset floating<CR>
nmap <space>b :CocCommand explorer --preset buffer<CR>

nnoremap <F1> :CocCommand explorer<CR>
nnoremap <Space>e :CocCommand explorer<CR>

" Close explorer if it's the only remaining window
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
