return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvimtree = require("nvim-tree")

    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      view = {
        width = 35,
        relativenumber = false,
        number = false,
        signcolumn = "yes",
      },
      -- change folder arrow icons
      renderer = {
        highlight_git = true,
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              arrow_closed = "", -- arrow when folder is closed
              arrow_open = "", -- arrow when folder is open
            },
            git = {
              unstaged = "U",
              staged = "S",
              unmerged = "UM",
              renamed = "R",
              untracked = "",
              deleted = "D",
              ignored = "I",
            },
          },
        },
      },
      -- disable window_picker for
      -- explorer to work well with
      -- window splits
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        dotfiles = true,
      },
      git = {
        enable = true,
        ignore = false,
        show_on_dirs = true,
        show_on_open_dirs = true,
      },
    })

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    -- highlight currently open file
    local api = require("nvim-tree.api")

    vim.api.nvim_create_autocmd("BufEnter", {
      nested = true,
      callback = function()
          if (vim.fn.bufname() == "NvimTree_1") then return end

          api.tree.find_file({ buf = vim.fn.bufnr() })
      end,
    }) 
  end
}
