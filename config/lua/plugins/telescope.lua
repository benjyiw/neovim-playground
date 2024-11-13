return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function () 
    local builtin = require('telescope.builtin')
    local opts = { remap = false }
    vim.keymap.set('n', '<leader><leader>', builtin.find_files, opts)
    vim.keymap.set('n', '<leader>fi', builtin.find_files, opts)
    vim.keymap.set('n', '<leader>fg', builtin.git_files, opts)
  end
}
