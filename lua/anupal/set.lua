-- Basic settings
vim.opt.number = true              -- Show line numbers
vim.opt.relativenumber = true      -- use relative numbers
vim.opt.cursorline = true          -- Highlight current line
vim.opt.title = true               -- Set terminal title
vim.opt.scrolloff = 10                             -- Keep 10 lines above/below cursor 
vim.opt.sidescrolloff = 8                          -- Keep 8 columns left/right of cursor
vim.opt.ttyfast = true             -- Speed up scrolling
vim.opt.wrap = false

-- Indentation
vim.opt.expandtab = true           -- Use spaces instead of tabs
vim.opt.tabstop = 4                -- Number of spaces a tab counts for
vim.opt.softtabstop = 4            -- Editing mode tab width
vim.opt.shiftwidth = 4             -- Indent width
vim.opt.smartindent = true         -- Enable auto indenting

-- Search setting
vim.opt.ignorecase = true                          -- Case insensitive search
vim.opt.smartcase = true                           -- Case sensitive if uppercase in search
vim.opt.hlsearch = false                           -- Don't highlight search results 
vim.opt.incsearch = true                           -- Show matches as you type

-- Visual settings
vim.opt.colorcolumn = "100"                        -- Show a column at 100 chars
vim.opt.termguicolors = true                       -- Enable 24-bit colors
vim.opt.completeopt = "menuone,noinsert,noselect"  -- Completion options
vim.opt.synmaxcol = 300                            -- Syntax highlighting limit
vim.opt.cmdheight = 1                              -- Command line height
vim.opt.showmode = false                           -- Don't show mode in command line

-- File handling
vim.opt.backup = false                             -- Don't create backup files
vim.opt.writebackup = false                        -- Don't create backup before writing
vim.opt.swapfile = false                           -- Don't create swap files
vim.opt.undofile = true                            -- Persistent undo
vim.opt.undodir = vim.fn.expand("~/.vim/undodir")  -- Undo directory
vim.opt.updatetime = 300                           -- Faster completion
vim.opt.timeoutlen = 500                           -- Key timeout duration
vim.opt.ttimeoutlen = 0                            -- Key code timeout
vim.opt.autoread = true                            -- Auto reload files changed outside vim
vim.opt.autowrite = false                          -- Don't auto save

-- Behavior settings
vim.opt.hidden = true              -- Allow hidden buffers
vim.opt.backspace = "indent,eol,start"             -- Better backspace behavior
vim.opt.autochdir = false                          -- Don't auto change directory
vim.opt.iskeyword:append("-")                      -- Treat dash as part of word
vim.opt.path:append("**")                          -- include subdirectories in search
vim.opt.selection = "exclusive"                    -- Selection behavior
vim.opt.mouse = "a"                                -- Enable mouse support
vim.opt.clipboard:append("unnamedplus")            -- Use system clipboard
vim.opt.modifiable = true                          -- Allow buffer modifications
vim.opt.encoding = "UTF-8"                         -- Set encoding


-- vim.opt.clipboard = 'unnamedplus'  -- user system's keyboard for yank
-- vim.api.nvim_set_option("clipboard", "unnamedplus")

-- Colorscheme
-- vim.o.background = 'light'
vim.cmd.colorscheme "vscode"
