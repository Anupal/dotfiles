return {
  "kevinhwang91/nvim-ufo",
  dependencies = {
    "kevinhwang91/promise-async",
  },
  config = function()
    local ufo = require('ufo')

    ufo.setup({
      -- Use treesitte as the main provider
      provider_selector = function(bufnr, filetype, buftype)
        return {'treesitter', 'indent'}
      end
    })
  end,
}
