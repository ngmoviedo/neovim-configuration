" Dictionary and spell checking
setlocal spell spelllang=es
setlocal spellfile=~/.config/nvim/spell/es.utf-8.add
setlocal dictionary=/usr/share/dict/spanish

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
