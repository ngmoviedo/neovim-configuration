" LaTeX (vimtex)
" PDF viewer 
let g:vimtex_view_method = 'zathura'

" TOC viewer
let g:lens#disabled_filenames = ['Table of contents*']
map º :VimtexTocToggle <CR>

" Dictionary and spell checking
let g:tex_flavor = "latex"
setlocal spell spelllang=es
setlocal spellfile=~/.config/nvim/spell/es.utf-8.add
setlocal dictionary=/usr/share/dict/spanish

"Linting
let b:ale_linters = ['lacheck']
let b:ale_fixers = ['latexindent', 'remove_trailing_lines', 'trim_whitespace']

" Concealment
set conceallevel=2
let g:tex_conceal = 'abdmg'
augroup vimrc " Only in normal mode
  autocmd!
  autocmd InsertEnter *.tex set conceallevel=0
  autocmd InsertLeave *.tex set conceallevel=2
augroup END

" Autoclose
let g:pear_tree_pairs = {
            \ '(': {'closer': ')', 'not_at':['\\']},
            \ '[': {'closer': ']', 'not_at':['\\']},
            \ '{': {'closer': '}', 'not_at':['\\']},
            \ "'": {'closer': "'"},
            \ '"': {'closer': '"'},
            \ '$': {'closer': '$'},
            \ '\\left(': {'closer': '\\right)'},
            \ '\\left[': {'closer': '\\right]'},
            \ '\\left\\{': {'closer': '\\right\\}'},
            \ '\\left\\langle': {'closer': '\\right\\rangle'},
            \ '\\langle': {'closer': '\\rangle'}
            \ }

" Shortcuts
nmap <F4> <plug>(vimtex-view)
nmap <F5> <plug>(vimtex-compile)
nmap <F6> <plug>(vimtex-errors)

" Simple brackets
"inoremap \[ \[\]<left><left>
"inoremap \{ \{\}<left><left>
" Centering brackets
" inoremap \[<CR> \[<CR>\]<ESC>O
" inoremap \{<CR> \{<CR>\}<ESC>O
" Scalable parenthesis and brackets
" inoremap \( \left(\right)<left><left><left><left><left><left><left>
" inoremap \[ \left[\right]<left><left><left><left><left><left><left>
" inoremap \{ \left\{\right\}<left><left><left><left><left><left><left><left>
" Jump over closing character
" inoremap <S-Tab> <Esc>/[$)}\]\|>]<CR>:nohl<CR>a
