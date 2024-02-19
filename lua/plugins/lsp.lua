return {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
                "williamboman/mason.nvim",
                "neovim/nvim-lspconfig",
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-buffer",
                "hrsh7th/cmp-path",
                "hrsh7th/cmp-cmdline",
                "hrsh7th/nvim-cmp",
                "hrsh7th/cmp-vsnip",
                "hrsh7th/vim-vsnip",
        },
        config = function()
                require("mason").setup()
                require("mason-lspconfig").setup({
                        ensure_installed = { "lua_ls"
                        },
                        automatic_installation = true,
                })
                require("mason-lspconfig").setup_handlers({
                        function(server_name)
                                require("lspconfig")[server_name].setup({
--                                        on_attach = function(client, buffer)
--                                                if server_name == "rust_analyzer" then
--                                                        print(server_name, buffer)
--                                                        vim.lsp.inlay_hint.enable(buffer,true)
--                                                end
--                                        end
                                })
                        end
                })
                vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
                        border = "rounded",
                })
                local cmp = require "cmp"
                cmp.setup({
                        snippet = {
                                expand = function(args)
                                        vim.fn["vsnip#anonymous"](args.body)
                                end,
                        },
                        window = {
                                completion = cmp.config.window.bordered(),
                        },
                        mapping = cmp.mapping.preset.insert({
                                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                                ['<C-Space>'] = cmp.mapping.complete(),
                                ['<C-e>'] = cmp.mapping.abort(),
                                ['<CR>'] = cmp.mapping.confirm({ select = true }),
                        }),
                        sources = cmp.config.sources({
                                        { name = "nvim_lsp" },
                                        { name = "vsnip" },
                                },
                                { {
                                        name = "buffer" }, })
                })
        end


}
