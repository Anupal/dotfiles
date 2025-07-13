-- Basic settings
vim.opt.expandtab = true           -- Use spaces instead of tabs
vim.opt.tabstop = 4                -- Number of spaces a tab counts for
vim.opt.softtabstop = 4            -- Editing mode tab width
vim.opt.shiftwidth = 4             -- Indent width
vim.opt.number = true              -- Show line numbers
vim.opt.relativenumber = true      -- use relative numbers
vim.opt.encoding = "utf-8"         -- Set encoding
vim.opt.clipboard = "unnamedplus"  -- Use system clipboard
vim.opt.completeopt = { "noinsert", "menuone", "noselect" }
vim.opt.cursorline = true          -- Highlight current line
vim.opt.hidden = true              -- Allow hidden buffers
vim.opt.smartindent = true         -- Enable auto indenting
vim.opt.title = true               -- Set terminal title
vim.opt.ttyfast = true             -- Speed up scrolling
vim.opt.colorcolumn = "80"         -- Show a column at 80 chars
vim.opt.wrap = false
vim.opt.incsearch = true           -- incremental search

vim.opt.clipboard = 'unnamedplus'  -- user system's keyboard for yank
-- vim.api.nvim_set_option("clipboard", "unnamedplus")

-- Colorscheme
-- vim.o.background = 'light'
vim.cmd.colorscheme "vscode"
--vim.cmd([[colorscheme vscode]])
