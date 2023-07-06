vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'Mofiqul/dracula.nvim'
    use 'nvim-lua/plenary.nvim'
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
    use 'nvim-tree/nvim-web-devicons'
    use {'nvim-telescope/telescope.nvim', tag ='0.1.0', requires = { {'nvim-lua/plenary.nvim'} } }
    use {'nvim-treesitter/nvim-treesitter'}
    use 'TimUntersberger/neogit'
    use 'ThePrimeagen/harpoon'
    use { 'VonHeikemen/lsp-zero.nvim', requires = {
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
    use { 'folke/which-key.nvim', config = function() require("which-key").setup {} end }
    use 'christoomey/vim-tmux-navigator'
end)
