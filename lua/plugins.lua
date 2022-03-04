-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use {'wbthomason/packer.nvim'}

    -- Comments line out
    use 'tpope/vim-commentary'

    -- Repeat plugin actions
    use 'tpope/vim-repeat'

    -- Comfortable motions
    use 'justinmk/vim-sneak'

    -- Startup page
    use {'mhinz/vim-startify'}

    -- LaTeX edition
    use {'lervag/vimtex', ft = {'tex', 'latex'}}

    -- MATLAB edition
    use {'ebranlard/vim-matlab-behave', ft = {'matlab'}}

    -- Pandoc edition
    use {
        {
            'vim-pandoc/vim-pandoc',
            ft = {'pandoc', 'markdown'},
        }, {
            'vim-pandoc/vim-pandoc-syntax',
            ft = {'pandoc', 'markdown'},
        }
    }

    -- Fish syntax highlighting
    use {'dag/vim-fish', ft = {'fish', 'conf'}} -- neovim detects files with fish extension as conf files

    -- Tridactyl syntax
    use {
        'tridactyl/vim-tridactyl',
        event = 'BufRead,BufNewFile tridactylrc',
    }

    -- Firenvim
    use {
        'glacambre/firenvim',
        run = function() vim.fn['firenvim#install'](0) end,
    }

    -- LSP
    use {
        {'neovim/nvim-lspconfig'}, {
            'onsails/lspkind-nvim', -- LSP icons
        }
    }
    use {'mfussenegger/nvim-jdtls'}

    -- Autocompletion and snippets engine
    use {
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'},
        {'hrsh7th/cmp-cmdline'}, {'hrsh7th/vim-vsnip'}
    }

    -- Autopairs
    use {{'cohama/lexima.vim'}, 'tpope/vim-surround'}
    -- Treesitter
    use {
        {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate',
        }, -- Updates the parsers on upgrade
        {'p00f/nvim-ts-rainbow'}, -- rainbow brackets and parentheses
        {'romgrk/nvim-treesitter-context', disable = true}
    }

    -- Github Copilot
    use {'github/copilot.vim'}

    -- Indent guides
    use {'lukas-reineke/indent-blankline.nvim'}

    -- Line numbering
    use {'jeffkreeftmeijer/vim-numbertoggle'}

    -- Fade inactive buffers
    use {'TaDaa/vimade'}

    -- Netrw improvements
    use {'tpope/vim-vinegar'}
    use {'kyazdani42/nvim-tree.lua'}

    -- Status and buffer line
    use {
        {'hoob3rt/lualine.nvim'},
        {'akinsho/nvim-bufferline.lua'}
    }

    -- Color schemes
    use {'dracula/vim', as = 'dracula'}

    -- Devicons
    use {'kyazdani42/nvim-web-devicons'}

    -- Floating terminal
    use {'akinsho/nvim-toggleterm.lua'}

    -- Git integration
    use {'tpope/vim-fugitive'}

    use {
        'lewis6991/gitsigns.nvim',
        -- cond = {novscode}, -- Problematic at updates
        requires = {'nvim-lua/plenary.nvim'},
        tag = 'release'
        -- config = function() require('gitsigns').setup() end
    }

    -- FZF integrations
    use {
        {'junegunn/fzf'},
        {'junegunn/fzf.vim'}
    }

    -- Colorizer
    use {
        'norcalli/nvim-colorizer.lua',
        config = function() require('colorizer').setup() end
    }

    -- Smooth scrolling
    use {'psliwka/vim-smoothie'}

end)
