-- Set up lspconfig.
-- Diagnostics - don't display virtual text inline with code
vim.diagnostic.config({
    virtual_text = false
})

local on_attach = function(client, bufnr)
  -- Show Diagnostics on cursor hold 
  vim.api.nvim_create_autocmd("CursorHold", {
  buffer = bufnr,
  callback = function()
    local opts = {
      focusable = false,
      close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
      -- border = 'rounded',
      source = 'always',
      prefix = ' ',
      scope = 'cursor',
    }
    vim.diagnostic.open_float(nil, opts)
  end
  })

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<Leader>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<Leader>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<Leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<Leader>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<Leader>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<Leader>f', vim.lsp.buf.formatting, bufopts)
  vim.keymap.set('v', 'K', '');
end

-- Add additional capabilities supported by nvim-cmp
capabilities = require('cmp_nvim_lsp').default_capabilities()

require'lspconfig'.gopls.setup{
    on_attach = on_attach,
    -- capabilities = capabilities
}

-- local lspconfig = require('lspconfig')
-- local servers = {'pyright', 'tsserver', 'clangd'}
-- -- Enable some language servers with the additional completion capabilities offered by nvim-cmp
-- for _, lsp in ipairs(servers) do
--     lspconfig[lsp].setup{
--         on_attach = on_attach,
--         -- capabilities = capabilities,
--     }
-- end
