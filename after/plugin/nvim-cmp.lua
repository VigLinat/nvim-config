local cmp = require'cmp'
local compare = require'cmp.config.compare'

cmp.setup({
  snippet = {
    expand = function(args)
      require('snippy').expand_snippet(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ 
        -- behavior = cmp.ConfirmBehavior.Replace,
        select = false 
    }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    ['<C-j>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
           cmp.select_next_item()
          else
           fallback()
          end
    end, {'i' ,'s'}),

    ['<C-k>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          else
            fallback()
          end
        end, { 'i', 's' }),
  }),

  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'snippy' },
    { name = 'fuzzy_buffer' },
  }),

  sorting = {
      comparators = {
            require'cmp_fuzzy_buffer.compare',
			compare.sort_text,
			compare.score,
			compare.recently_used,
      }
  },

  window = {
      completion = {
          scrollbar = true,
      },
  },

})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    { name = 'buffer' },
  })
})
