-- PLUGINS 
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'nvim-tree/nvim-tree.lua'

    -- Colors & UI 
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'EdenEast/nightfox.nvim'
    Plug 'rebelot/kanagawa.nvim'
    Plug 'blazkowolf/gruber-darker.nvim'
    Plug 'savq/melange-nvim'

    -- Editing
    Plug 'cohama/lexima.vim'
    Plug ('kylechui/nvim-surround', {['tag'] = '*'})
    Plug 'lukas-reineke/indent-blankline.nvim'
 
    Plug 'neovim/nvim-lspconfig'
    Plug ('nvim-treesitter/nvim-treesitter', {['do'] = 'TSUpdate'})

    -- nvim-cmp
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'tzachar/fuzzy.nvim'
    Plug 'tzachar/cmp-fuzzy-buffer'

    -- Telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim' 
    Plug ('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' })
vim.call('plug#end')
