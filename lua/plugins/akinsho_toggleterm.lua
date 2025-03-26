return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup{
      size = 20,
      open_mapping = [[<c-\>]],
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
      persist_size = true,
      direction = 'float',
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = 'curved',
        winblend = 3,
      }
    }

    vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>ToggleTerm direction=float<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("n", "<leader>r", "<cmd>ToggleTerm direction=vertical<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("n", "<leader>b", "<cmd>ToggleTerm direction=horizontal<CR>", {noremap = true, silent = true})
  end
}
