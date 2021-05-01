return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Startup page
    use 'mhinz/vim-startify'

    -- LaTeX edition
    use {'lervag/vimtex', ft = {'tex', 'latex'}}

    -- MATLAB edition
    use {
        'ebranlard/vim-matlab-behave',
        requires = 'vim-scripts/MatlabFilesEdition',
        ft = {'matlab'}
    }

    -- Pandoc edition
    use {
        'vim-pandoc/vim-pandoc',
        requires = {'vim-pandoc/vim-pandoc-syntax'},
        ft = {'pandoc','markdown'}
    }

    -- Fish syntax highlighting
    use {
        'dag/vim-fish',
        ft = {'fish'}
    }

    -- Autocompletion, lsp, snippets, treesitter...
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'
    use {
        'onsails/lspkind-nvim',
        config = function() require('lspkind').init() end
    }
    use {
        'SirVer/ultisnips',
        requires = {'honza/vim-snippets'}
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate' -- Updates the parsers on upgrade
    }

    -- Indent guides
    use {
        'lukas-reineke/indent-blankline.nvim',
        branch = 'lua'
    }

    -- Autoclose and pairs matching
    use 'tpope/vim-surround'
    use 'windwp/nvim-autopairs'

    -- Comments line out
    use 'tpope/vim-commentary'

    -- Repeat plugin actions
    use 'tpope/vim-repeat'

    -- Comfortable motions
    use 'easymotion/vim-easymotion'

    -- Line numbering
    use 'jeffkreeftmeijer/vim-numbertoggle'

    -- Fade inactive buffers
    use 'TaDaa/vimade'

    -- Netrw improvements
    use 'tpope/vim-vinegar'

    -- Color schemes
    use {'dracula/vim', as = 'dracula'}

    -- Status and buffer line
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use {
        'akinsho/nvim-bufferline.lua',
        requires = {'kyazdani42/nvim-web-devicons'}
    }

    -- Floating terminal
    use 'voldikss/vim-floaterm'

    -- Git integration
    use 'tpope/vim-fugitive'
    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = function () require('gitsigns').setup() end
    }

end)
