return {
  'numToStr/FTerm.nvim',
  config = function()
    -- Set up FTerm with default or custom options
    require('FTerm').setup {
      border = 'rounded', -- You can use 'single', 'double', 'rounded', etc.
    }

    -- Keybinding to toggle the terminal with Ctrl + t
    vim.keymap.set('n', '<C-t>', '<CMD>lua require("FTerm").toggle()<CR>') -- Normal mode: Ctrl+t to toggle
    vim.keymap.set('t', '<C-t>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>') -- Terminal mode: Ctrl+t to toggle
  end,
}
