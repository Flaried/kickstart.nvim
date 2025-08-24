local Keymaps = {}

function Keymaps.setup()
  -- Golang errors
  vim.keymap.set('i', '<C-e>', 'if err != nil {<Esc>o}<Esc>O', { desc = 'Format error', noremap = true, silent = true })
  -- Diagnostic keymaps
  vim.keymap.set('n', '<leader>e', vim.diagnostic.setloclist, { desc = 'Open diagnostic [E]rrors list' })

  vim.keymap.set('n', '<leader>h', vim.lsp.buf.hover, bufopts)
end

return Keymaps
