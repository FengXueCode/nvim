local lspkind = require('lspkind')
local cmp = require 'cmp'
cmp.setup {
  -- 指定 snippet 引擎
  snippet = {
    expand = function(args)
      -- For `vsnip` users.
      vim.fn["vsnip#anonymous"](args.body)

      -- For `luasnip` users.
      -- require('luasnip').lsp_expand(args.body)

      -- For `ultisnips` users.
      -- vim.fn["UltiSnips#Anon"](args.body)

      -- For `snippy` users.
      -- require'snippy'.expand_snippet(args.body)
    end,
  },
  -- 来源
  sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      -- For vsnip users.
      { name = 'vsnip' },
      -- For luasnip users.
      -- { name = 'luasnip' },
      --For ultisnips users.
      -- { name = 'ultisnips' },
      -- -- For snippy users.
      -- { name = 'snippy' },
    },
    {
      { name = 'buffer' },
      { name = 'path' }
    }),

}

-- Use buffer source for `/`.
cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':'.
cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})