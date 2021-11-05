local novscode = function() return vim.fn.exists('g:vscode') == 0 end

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
    use {'mhinz/vim-startify', cond = {novscode}}

    -- LaTeX edition
    use {'lervag/vimtex', ft = {'tex', 'latex'}, cond = {novscode}}

    -- MATLAB edition
    use {'ebranlard/vim-matlab-behave', ft = {'matlab'}, cond = {novscode}}

    -- Pandoc edition
    use {
        {
            'vim-pandoc/vim-pandoc',
            ft = {'pandoc', 'markdown'},
            cond = {novscode}
        }, {
            'vim-pandoc/vim-pandoc-syntax',
            ft = {'pandoc', 'markdown'},
            cond = {novscode}
        }
    }

    -- Fish syntax highlighting
    use {'dag/vim-fish', ft = {'fish', 'conf'}, cond = {novscode}} -- neovim detects files with fish extension as conf files

    -- Tridactyl syntax
    use {
        'tridactyl/vim-tridactyl',
        event = 'BufRead,BufNewFile tridactylrc',
        cond = {novscode}
    }

    -- Firenvim
    use {
        'glacambre/firenvim',
        run = function() vim.fn['firenvim#install'](0) end,
        cond = {novscode}
    }

    -- LSP
    use {
        {'neovim/nvim-lspconfig', cond = {novscode}}, {
            'onsails/lspkind-nvim', -- LSP icons
            config = function() require('lspkind').init() end,
            cond = {novscode}
        }
    }
    use {'mfussenegger/nvim-jdtls', cond = {novscode}}

    -- Autocompletion engine
    use {'hrsh7th/nvim-compe', cond = {novscode}}

    -- Github Copilot
    use {'github/copilot.vim', cond = {novscode}}

    -- Snippets
    use {
        'hrsh7th/vim-vsnip',
        requires = {'hrsh7th/vim-vsnip-integ'},
        cond = {novscode}
    }

    -- Autopairs
    use {{'cohama/lexima.vim', cond = {novscode}}, 'tpope/vim-surround'}
    -- Treesitter
    use {
        {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate',
            cond = {novscode}
        }, -- Updates the parsers on upgrade
        {'p00f/nvim-ts-rainbow', cond = {novscode}}, -- rainbow brackets and parentheses
        {'romgrk/nvim-treesitter-context', disable = true, cond = {novscode}}
    }

    -- Indent guides
    use {'lukas-reineke/indent-blankline.nvim', cond = {novscode}}

    -- Line numbering
    use {'jeffkreeftmeijer/vim-numbertoggle', cond = {novscode}}

    -- Fade inactive buffers
    use {'TaDaa/vimade', cond = {novscode}}

    -- Netrw improvements
    use {'tpope/vim-vinegar', cond = {novscode}}
    use {'kyazdani42/nvim-tree.lua', cond = {novscode}}

    -- Status and buffer line
    use {
        {'hoob3rt/lualine.nvim', cond = {novscode}},
        {'akinsho/nvim-bufferline.lua', cond = {novscode}}
    }

    -- Color schemes
    use {'dracula/vim', as = 'dracula'}
    -- use 'Mofiqul/dracula.nvim'

    -- Devicons
    use {'kyazdani42/nvim-web-devicons', cond = {novscode}}

    -- Floating terminal
    use {'akinsho/nvim-toggleterm.lua', cond = {novscode}}

    -- Git integration
    use {'tpope/vim-fugitive', cond = {novscode}}

    use {
        'lewis6991/gitsigns.nvim',
        -- cond = {novscode}, -- Problematic at updates
        requires = {'nvim-lua/plenary.nvim'},
        tag = 'release',
        -- config = function() require('gitsigns').setup() end
    }

    -- FZF integrations
    use {
        {'junegunn/fzf', cond = {novscode}},
        {'junegunn/fzf.vim', cond = {novscode}}
    }

    -- Colorizer
    use {
        'norcalli/nvim-colorizer.lua',
        cond = {novscode},
        config = function() require('colorizer').setup() end
    }

    -- Smooth scrolling
    use {'psliwka/vim-smoothie', cond = {novscode}}

end)
