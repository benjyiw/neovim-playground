return {
  -- surround normal:'ys' 'cs' 'ds', visual:'S'
  { "tpope/vim-surround" },
  -- repeat for plugins
  { "tpope/vim-repeat" },
  -- automatically detect indentation
  { "tpope/vim-sleuth" },
  -- find replace substitution niceness with :Subvert
  -- and coercion (cr): snake_case (crs), MixedCase (crm), camelCase (crc),
  -- UPPER_CASE (cru), dash-case (cr-), dot.case (cr.)
  { "tpope/vim-abolish" },
  -- best git workflow
  {
    "tpope/vim-fugitive",
    config = function()
      local opts = { noremap = true }
      vim.keymap.set("n", "<leader>gs", ":G<CR>", opts)
      vim.keymap.set("n", "<leader>G", ":tab G<CR>", opts)
      vim.keymap.set("n", "<leader>gb", ":G blame<CR>", opts)
    end
  },
}
