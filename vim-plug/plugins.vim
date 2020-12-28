" Plugin configuration (vim-plug)
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . '/plugged')

" Make sure you use single quotes

" Startup page
Plug 'mhinz/vim-startify'

" LaTeX edition
Plug 'lervag/vimtex', {'for': 'tex'}
Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}

" MATLAB edition 
Plug 'vim-plugin-config/MatlabFilesEdition', {'for': 'matlab'}

" Pandoc edition
Plug 'vim-pandoc/vim-pandoc', {'for': 'pandoc'}
Plug 'vim-pandoc/vim-pandoc-syntax', {'for': 'pandoc'}

" Fish syntax highlighting
Plug 'dag/vim-fish', {'for': 'fish'}

" Autocompletion, linting and snippets
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'dense-analysis/ale'

" Pair matching and autoclose tools
Plug 'tpope/vim-surround'
Plug 'tmsvg/pear-tree'

" Comment lines out
Plug 'tpope/vim-commentary'

" Repeat plugin actions
Plug 'tpope/vim-repeat'

" Comfortable motions, visual substitutions and line numering
Plug 'easymotion/vim-easymotion'
Plug 'osyo-manga/vim-over'
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" Distraction free edition
Plug 'junegunn/goyo.vim'
Plug 'TaDaa/vimade'

" File manager (netrw, ranger and NERDTree) improvements
Plug 'tpope/vim-vinegar'
Plug 'kevinhwang91/rnvimr'

" Color schemes and status bar
"Plug 'sainnhe/gruvbox-material'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

" Floating terminal
Plug 'voldikss/vim-floaterm'

" Git integration
Plug 'tpope/vim-fugitive'

" Colorizer
Plug 'norcalli/nvim-colorizer.lua'

" Scrollbar
Plug 'Xuyuanp/scrollbar.nvim'

" Initialize plugin system
call plug#end()
