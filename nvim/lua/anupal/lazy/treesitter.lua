return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    'nvim-treesitter/nvim-treesitter-context',
  },
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter")

    treesitter.setup({
      ensure_installed = {
        "c", "c_sharp", "lua", "vim", "vimdoc", "elixir", "javascript", "html", "python", "typescript", "go", "bash", "dockerfile", "markdown", "markdown_inline", "svelte", "css"
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
