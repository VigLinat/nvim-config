vim.cmd [[
if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
]]

vim.cmd [[
if has('termguicolors')
    set termguicolors
endif
]]

-- vim.cmd [[ colorscheme gruber-darker ]]
vim.cmd [[ colorscheme melange ]]
