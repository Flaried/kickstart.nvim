return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-emoji',
  },

  config = function()
    local cmp = require 'cmp'
    cmp.setup {
      mapping = {
        ['<C-j>'] = cmp.mapping(cmp.mapping.select_next_item {}),
        ['<C-k>'] = cmp.mapping(cmp.mapping.select_prev_item {}),
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
        ['<C-y>'] = cmp.mapping.confirm { select = true },
      },
      sources = cmp.config.sources {
        { name = 'emoji' },
      },
    }
  end,
}
