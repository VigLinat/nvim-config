require 'nvim-treesitter.install'.compilers = { "clang" }
require'nvim-treesitter.configs'.setup{
    ensure_installed = {'c', 'cpp', 'lua', 'javascript', 'typescript', 'python'},

    sync_install = false, 

    auto_install = true, 

    highlight = {
        enable = true, 
    },

    indent = {
        enable = false
    }
}
