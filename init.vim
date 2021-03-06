" Plugins
" Plugin configs are in 'plugin/' and 'lua/plugin/'
lua require('plugins') 

" Color scheme
if has('termguicolors')
    set termguicolors
endif
colorscheme dracula

" Jump to the last position when reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Basic settings
set noshowmatch		    " Don't highlight matching brackets
set ignorecase		    " Do case insensitive matching
set smartcase		    " Do smart case matching
set autowrite		    " Automatically save before commands like :next and :make
set hidden		        " Hide buffers when they are abandoned
set mouse=a		        " Enable mouse usage (all modes)
set scrolloff=1		    " Always show at least one line above/below the cursor
set inccommand=nosplit  " Live preview for substitutions
set updatetime=300      " For LSP hover messages

" Line numbering (requires numbertoggle plugin)
set number relativenumber " Enable line numbers
nnoremap <silent> <C-n> :set relativenumber!<cr>

" Indentation
set tabstop=4
set shiftwidth=4
set expandtab

" Sane clipboard integration and mappings
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-x> "+d
set clipboard=unnamedplus " Allows yanking and pasting to and from clipboard

" Substitutions shortcuts
nnoremap <c-s> :%s/
nnoremap <space>s :%s/\<<C-r><C-w>\>/

" Built-in terminal shortcuts
command Vterm :vsplit | :terminal
command Hterm :split | :terminal

" Modify spelling highlight
hi clear SpellBad
let &t_Cs = "\e[4:3m"
let &t_Ce = "\e[4:0m"
hi SpellBad     gui=undercurl guisp=red term=undercurl cterm=undercurl

