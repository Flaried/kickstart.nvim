return {
  'mbbill/undotree',
  vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle),
  -- Enable persistent undo with Lua config
  config = function()
    vim.opt.undofile = true

    -- Set the undodir for persistent undo
    local undodir = vim.fn.expand '~/.undodir'

    -- Create the undodir directory if it doesn't exist
    if not vim.fn.isdirectory(undodir) then
      vim.fn.mkdir(undodir, 'p', '0700')
    end

    -- Set undodir and persist undo
    vim.opt.undodir = undodir
  end,
}
