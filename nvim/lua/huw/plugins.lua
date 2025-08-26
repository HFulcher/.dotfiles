require("lazy").setup({
    -- Telescope
    { 'nvim-telescope/telescope.nvim',   tag = '0.1.6' },
    'nvim-lua/plenary.nvim',
    -- Colourscheme
    { "rose-pine/neovim",                name = "rose-pine" },
    -- Harpoon
    { "ThePrimeagen/harpoon",            branch = "harpoon2", dependencies = { "nvim-lua/plenary.nvim" } },
    -- Treesitter
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    -- Undo history
    'mbbill/undotree',
    -- Git integration
    'tpope/vim-fugitive',
    -- Mason and LSP helpers
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    { 'VonHeikemen/lsp-zero.nvim',      branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    -- Completion plugins
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'L3MON4D3/LuaSnip' },
    -- Tmux navigation
    { "alexghergh/nvim-tmux-navigation" },
    -- Comment toggling
    { 'numToStr/Comment.nvim',          opts = {},      lazy = false, },
    -- Icons
    { 'nvim-tree/nvim-web-devicons' },
    -- Display keybindings
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },
    -- Statusline
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = { options = { theme = 'rose-pine' } }
    },

    -- Git signs in the gutter
    { 'lewis6991/gitsigns.nvim',     opts = {} },

    -- Automatic bracket/quote pairing
    { 'windwp/nvim-autopairs',       event = 'InsertEnter',                            opts = {} },

    -- Colourise colour codes like #ff0000
    { 'norcalli/nvim-colorizer.lua', opts = {} },

    -- A pretty diagnostics/location list UI
    { 'folke/trouble.nvim',          dependencies = { 'nvim-tree/nvim-web-devicons' }, opts = {} },
})
