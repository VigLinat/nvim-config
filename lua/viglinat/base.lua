vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.linebreak = true
vim.opt.scrolloff = 5
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.tabstop= 4
vim.opt.shiftwidth= 4
vim.opt.shortmess = vim.opt.shortmess +  'I'
vim.opt.laststatus= 2
vim.opt.showtabline= 1
vim.opt.backspace={'start', 'eol', 'indent'}
vim.opt.hidden = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.mouse = vim.opt.mouse + 'a'
vim.opt.wrap = false
vim.opt.stl = 'local'
vim.opt.cursorline = true
vim.o.updatetime = 10

vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

vim.opt.clipboard:prepend {'unnamed', 'unnamedplus'}

vim.api.nvim_create_augroup("CursorLineOnlyInActiveWindow", {clear = true})
    vim.api.nvim_create_autocmd({"VimEnter", "WinEnter", "BufWinEnter"}, {
        group = 'CursorLineOnlyInActiveWindow',
        pattern = "*", 
        command = 'setlocal cursorline',
        
    })
    vim.api.nvim_create_autocmd({"WinLeave"}, {
        group = "CursorLineOnlyInActiveWindow",
        pattern = "*",
        command = "setlocal nocursorline"
    })
