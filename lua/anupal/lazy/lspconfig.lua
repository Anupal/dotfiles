return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        { "antosha417/nvim-lsp-file-operations", config = true },
        { "folke/neodev.nvim", opts = {} },
    },
    config = function()
        -- import lspconfig plugin
        local lspconfig = require("lspconfig")

        -- import mason_lspconfig plugin
        local mason_lspconfig = require("mason-lspconfig")

        -- import cmp-nvim-lsp plugin
        local cmp_nvim_lsp = require("cmp_nvim_lsp")

        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),
            callback = function(ev)
                -- Buffer local mappings.
                -- See `:help vim.lsp.*` for documentation on any of the below functions
                local opts = { buffer = ev.buf, silent = true }
            end,
        })

        -- used to enable autocompletion (assign to every lsp server config)
        local capabilities = cmp_nvim_lsp.default_capabilities()

        -- Better LSP UI
        vim.diagnostic.config({
            virtual_text = { prefix = '●' },
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = " ",
                    [vim.diagnostic.severity.WARN] = " ",
                    [vim.diagnostic.severity.INFO] = " ",
                    [vim.diagnostic.severity.HINT] = "󰠠 ",
                }
            },
            underline = true,
            update_in_insert = false,
            severity_sort = true,
        })

        vim.lsp.config("lua_ls", {
            capabilities = capabilities,
            settings = {
                Lua = {
                    -- make the language server recognize "vim" global
                    diagnostics = {
                        globals = { "vim" },
                    },
                    completion = {
                        callSnippet = "Replace",
                    },
                }
            }
        })

        local pid = vim.fn.getpid()
        vim.lsp.config("omnisharp", {
            capabilities = capabilities,
            settings = {
                cmd = { "omnisharp", "--languageserver" , "--hostPID", tostring(pid)},
                enable_import_completion = true,
                organize_imports_on_format = true,
                enable_roslyn_analyzers = true,
                root_dir = function ()
                    return vim.loop.cwd() -- current working directory
                end,
            }
        })
    end,

}
-- return {
--     {
--         "neovim/nvim-lspconfig",
--         dependencies = {
--             {
--                 "folke/lazydev.nvim",
--                 ft = "lua", -- only load on lua files
--                 opts = {
--                 library = {
--                     -- See the configuration section for more details
--                     -- Load luvit types when the `vim.uv` word is found
--                     { path = "${3rd}/luv/library", words = { "vim%.uv" } },
--                 },
--             },
--           },
--         },
--         config = function()
--             require("lspconfig").lua_ls.setup {}
--         end
--     }
-- }
