return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
 
    configs.setup({
      ensure_installed = {
        "c", "c_sharp", "lua", "vim", "vimdoc", "elixir", "javascript", "html", "python", "typescript", "go", "bash", "dockerfile", "markdown", "markdown_inline"
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
