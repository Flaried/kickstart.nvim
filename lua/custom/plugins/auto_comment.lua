return {
  'terrortylor/nvim-comment',
  config = function()
    require('nvim_comment').setup {
      operator_mapping = '<leader>/',
    }
  end,
}
