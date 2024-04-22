require("lazy").setup({
  'nvim-telescope/telescope.nvim', tag = '0.1.6',
  'nvim-lua/plenary.nvim',
  { "rose-pine/neovim", name = "rose-pine" },
  { "ThePrimeagen/harpoon", branch = "harpoon2", dependencies = { "nvim-lua/plenary.nvim" }},
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  'mbbill/undotree',
  'tpope/vim-fugitive',
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},
  { "alexghergh/nvim-tmux-navigation" },
  { 'numToStr/Comment.nvim', opts = {}, lazy = false, },
  { "folke/which-key.nvim", event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
}
})
