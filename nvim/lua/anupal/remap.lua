local wk = require("which-key")

wk.add({
  -- NvimTree
  { "<leader>e", group = "explorer"},
  { "<leader>ec", "<cmd>NvimTreeCollapse<CR>", desc = "Collapse file explorer", mode = "n" },
  { "<leader>et", "<cmd>NvimTreeToggle<CR>", desc = "Toggle file explorer", mode = "n" },
  { "<leader>ee", "<cmd>NvimTreeFocus<CR>", desc = "Focus file explorer", mode = "n" },
  { "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", desc = "Find file in explorer", mode = "n" },
  { "<leader>er", "<cmd>NvimTreeRefresh<CR>", desc = "Refresh file explorer", mode = "n" },

  -- Telescope
  { "<leader>f", group = "find"},
  { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
  { "<leader>fc", "<cmd>Telescope grep_string<cr>", desc = "Grep word under cursor", mode = "n"},
  { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent files", mode = "n" },
  { "<leader>fs", "<cmd>Telescope live_grep<cr>", desc = "Grep in cwd", mode = "n" },
  { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Buffer", mode = "n" },

  -- Window movement
  { "<leader>h", "<C-w>h", desc = "Move to left window", mode = "n" },
  { "<leader>j", "<C-w>j", desc = "Move to below window", mode = "n" },
  { "<leader>k", "<C-w>k", desc = "Move to above window", mode = "n" },
  { "<leader>l", "<C-w>l", desc = "Move to right window", mode = "n" },

  -- Save/exit
  { "<leader>w", group = "workspace" },
  { "<leader>wr", "<cmd>AutoSession restore<CR>", desc = "Restore session for cwd", mode = "n" },
  { "<leader>ws", "<cmd>AutoSession save<CR>", desc = "Save session for auto session root dir", mode = "n" },
  { "<leader>ww", "<cmd>w<cr>", desc = "Write file", mode = "n" },
  { "<leader>q", group = "quit" },
  { "<leader>qq", "<cmd>q<cr>", desc = "Quit", mode = "n" },
  { "<leader>qa", "<cmd>qa<cr>", desc = "Quit all", mode = "n" },

  -- Splits
  { "<leader>s", group = "splits" },
  { "<leader>sv", "<cmd>vsplit<CR>", desc = "Vertical split", mode = "n" },
  { "<leader>sh", "<cmd>split<CR>", desc = "Horizontal split", mode = "n" },

  -- Better indenting in visual mode
  { "<", "<gv", desc = "Indent left and reselect", mode = "v" },
  { ">", ">gv", desc = "Indent right and reselect", mode = "v" },

  -- LSP Actions
  { "gR", "<cmd>Telescope lsp_references<CR>", desc = "Show LSP references", mode = "n" },
  { "gD", vim.lsp.buf.declaration, desc = "Go to declaration", mode = "n" },
  { "gd", "<cmd>Telescope lsp_definitions<CR>", desc = "Show LSP definitions", mode = "n" },
  { "gi", "<cmd>Telescope lsp_implementations<CR>", desc = "Show LSP implementations", mode = "n" },
  { "gt", "<cmd>Telescope lsp_type_definitions<CR>", desc = "Show LSP type definitions", mode = "n" },
  { "<leader>ca", vim.lsp.buf.code_action, desc = "See available code actions", mode = { "n", "v" } },
  { "<leader>rn", vim.lsp.buf.rename, desc = "Smart rename", mode = "n" },
  { "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", desc = "Show buffer diagnostics", mode = "n" },
  { "<leader>d", vim.diagnostic.open_float, desc = "Show line diagnostics", mode = "n" },
  { "[d", vim.diagnostic.goto_prev, desc = "Go to previous diagnostic", mode = "n" },
  { "]d", vim.diagnostic.goto_next, desc = "Go to next diagnostic", mode = "n" },
  { "K", vim.lsp.buf.hover, desc = "Show documentation under cursor", mode = "n" },
  { "<leader>rs", "<cmd>LspRestart<CR>", desc = "Restart LSP", mode = "n" },

  -- Toggle Term
  { "<leader>T", group = "terminal" },
  { "<leader>Tt", "<cmd>ToggleTerm<CR>",                        desc = "Toggle terminal",            mode = "n" },
  { "<leader>Tf", "<cmd>ToggleTerm direction=float<CR>",        desc = "Floating terminal",          mode = "n" },
  { "<leader>Th", "<cmd>ToggleTerm direction=horizontal<CR>",   desc = "Horizontal terminal",        mode = "n" },
  { "<leader>Tv", "<cmd>ToggleTerm direction=vertical<CR>",     desc = "Vertical terminal",          mode = "n" },

  { "<leader>t", group = "tabs" },
  -- { "<leader>tc", "<cmd>tabnew<CR>", desc = "Create tab", mode = "n" },
  {
  "<leader>tc",
    function()
      local view = require("nvim-tree.view")
      local was_open = view.is_visible()

      vim.cmd("tabnew")

      if was_open then
        require("nvim-tree.api").tree.open()
      end
    end,
    desc = "Create tab (preserve NvimTree)",
    mode = "n",
  },
  { "<leader>tp", "<cmd>tabprevious<CR>", desc = "Previous tab", mode = "n" },
  { "<leader>tn", "<cmd>tabnext<CR>", desc = "Next tab", mode = "n" },
  { "<leader>t^", "<cmd>tabfirst<CR>", desc = "First tab", mode = "n" },
  { "<leader>t$", "<cmd>tablast<CR>", desc = "Last tab", mode = "n" },
  { "<leader>t<", "<cmd>tabmove -1<CR>", desc = "Move tab left", mode = "n" },
  { "<leader>t>", "<cmd>tabmove +1<CR>", desc = "Move tab right", mode = "n" },
  { "<leader>td", "<cmd>tab split<CR>", desc = "Duplicate tab", mode = "n" },

  -- LazyGit
  { "<leader>g", function() require('toggleterm.terminal').Terminal:new({ cmd = 'lazygit', hidden = true }):toggle() end, desc = "LazyGit (floating)", mode = "n" },

  -- Optional numbered terminals
  { "<leader>t1", "<cmd>1ToggleTerm<CR>", desc = "Terminal 1",   mode = "n" },
  { "<leader>t2", "<cmd>2ToggleTerm<CR>", desc = "Terminal 2",   mode = "n" },

  -- Miscellaneous
  { "jk", "<Esc>", mode = "i", desc = "Exit insert mode" }
})

