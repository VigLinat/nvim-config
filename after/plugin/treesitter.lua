require 'nvim-treesitter.install'.compilers = { "gcc" }
require'nvim-treesitter.configs'.setup{
    ensure_installed = {'c', 'cpp', 'lua', 'python', 'go'},

    sync_install = false, 

    auto_install = true, 

    highlight = {
        enable = true, 
    },

    indent = {
        enable = false
    }
}
