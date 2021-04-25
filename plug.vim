" Plugin configuration (vim-plug)
" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . '/plugged')

" Make sure you use single quotes

" Startup page
Plug 'mhinz/vim-startify'

" LaTeX edition
Plug 'lervag/vimtex', {'for': 'tex'}

" MATLAB edition 
Plug 'vim-scripts/MatlabFilesEdition', {'for': 'matlab'}

" Pandoc edition
Plug 'vim-pandoc/vim-pandoc', {'for': 'pandoc'}
Plug 'vim-pandoc/vim-pandoc-syntax', {'for': 'pandoc'}

" Fish syntax highlighting
Plug 'dag/vim-fish', {'for': 'fish'}

" Autocompletion, linting and snippets
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'onsails/lspkind-nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'lukas-reineke/indent-blankline.nvim', {'branch': 'lua'} " Will become the default when neovim 0.5 is released as stable

" Pair matching and autoclose tools
Plug 'tpope/vim-surround'
Plug 'tmsvg/pear-tree'

" Comment lines out
Plug 'tpope/vim-commentary'

" Repeat plugin actions
Plug 'tpope/vim-repeat'

" Comfortable motions, and line numering
Plug 'easymotion/vim-easymotion'
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" Distraction free edition
Plug 'TaDaa/vimade'

" File manager (netrw) improvements
Plug 'tpope/vim-vinegar'

" Color schemes and status bar
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'akinsho/nvim-bufferline.lua'

" Floating terminal
Plug 'voldikss/vim-floaterm'

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

" Scrolling
Plug 'psliwka/vim-smoothie'

" Initialize plugin system
call plug#end()
