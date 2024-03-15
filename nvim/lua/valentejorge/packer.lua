-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

--packer
return require('packer').startup(function(use)
-- Packer can manage itself
use 'wbthomason/packer.nvim'

--telescope
use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
}

--use({ 'rose-pine/neovim', as = 'rose-pine' })
use({ 'ellisonleao/gruvbox.nvim', as = 'gruvbox' })

--vim.cmd('colorscheme rose-pine')
vim.cmd('colorscheme gruvbox')

--treesitter and playground
use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use('nvim-treesitter/playground')

--LSP
use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {                                      -- Optional
        'williamboman/mason.nvim',
        run = function()
            pcall(vim.cmd, 'MasonUpdate')
        end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
}
}
use ('nvim-tree/nvim-web-devicons')

-- StatusLine
use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

-- Autopair
use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}

use {
    "lukas-reineke/indent-blankline.nvim"
}

-- LiveServer
use {
    "barrett-ruth/live-server.nvim",
    build = 'pnpm add -g live-server',
    cmd = { 'LiveServerStart', 'LiveServerStop' },

    config = function() require('live-server').setup() end
}

end)
