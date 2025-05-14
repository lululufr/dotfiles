return {
  {
    "akinsho/toggleterm.nvim",
    version = "*", -- prendre la dernière version
    opts = {
      size = 20, -- hauteur / largeur du terminal
      open_mapping = [[<c-\>]], -- mapping pour ouvrir/fermer
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      direction = "float", -- float | horizontal | vertical
      float_opts = {
        border = "curved", -- type de bordure
      },
      close_on_exit = true,
      shell = vim.o.shell,
    },
    keys = {
      { "<leader>tf", "<cmd>ToggleTerm<cr>", desc = "Ouvrir/Fermer le terminal" },
    },
  },
}
