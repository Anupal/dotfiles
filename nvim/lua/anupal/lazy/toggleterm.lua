return {
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({
        size = 15,
        open_mapping = [[<C-\>]],
        shade_terminals = true,
        start_in_insert = true,
        persist_size = true,
        direction = "float", -- options: horizontal, vertical, float, tab
        float_opts = {
          border = "rounded",
        },
      })
    end
  }
}
