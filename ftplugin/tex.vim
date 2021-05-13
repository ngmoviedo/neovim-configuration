" Dictionary and spell checking
setlocal spell spelllang=es

" Concealment
let g:tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"
let g:tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"
let g:tex_conceal_frac=1
set conceallevel=2
let g:tex_conceal = 'abdmg'
augroup vimrc " Only in normal mode
  autocmd!
  autocmd InsertEnter *.tex set conceallevel=0
  autocmd InsertLeave *.tex set conceallevel=2
augroup END

" VimTex configuration
" TeX flavor
let g:tex_flavor = 'latex'

" PDF viewer
let g:vimtex_view_method = 'zathura'

" TOC viewer
noremap <silent><º> :VimtexTocToggle<CR>

" Keymaps
nnoremap <silent><F4> :VimtexView<CR>
nnoremap <silent><F5> :VimtexCompile<CR>
nnoremap <silent><F6> :VimtexErrors<CR>
