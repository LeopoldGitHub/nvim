return {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
                "williamboman/mason.nvim",
                "neovim/nvim-lspconfig",
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-nvim-lua",
                "hrsh7th/cmp-buffer",
                "hrsh7th/cmp-path",
                "hrsh7th/cmp-cmdline",
                "hrsh7th/nvim-cmp",
                -- "hrsh7th/cmp-vsnip",
                -- "hrsh7th/vim-vsnip",
                "L3MON4D3/LuaSnip",
                build = "make install_jsregexp",
                "onsails/lspkind.nvim"
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
                local lspkind = require('lspkind')

                cmp.setup({

                        formatting = {
                                format = lspkind.cmp_format({
                                        mode = 'symbol_text', -- show only symbol annotations
                                        maxwidth = 50,        -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
                                        -- can also be a function to dynamically calculate max width such as
                                        -- maxwidth = function() return math.floor(0.45 * vim.o.columns) end,
                                        ellipsis_char = '...',    -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)

                                        show_labelDetails = true, -- show labelDetails in menu. Disabled by default
                                        with_text = true,
                                        menu = {
                                                buffer = "[buf]",
                                                nvim_lsp = "[LSP]",
                                                nvim_lua = "[api]",
                                                path = "[path]",
                                                luasnip = "[snip]",
                                        }

                                })
                        },

                        snippet = {
                                expand = function(args)
                                        require('luasnip').lsp_expand(args.body)
                                        -- vim.fn["vsnip#anonymous"](args.body)
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
                                ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                        }),

                        sources = cmp.config.sources({
                                { name = "luasnip" },
                                { name = "nvim_lua", max_item_count = 20 },
                                { name = "nvim_lsp", max_item_count = 20 },
                                { name = "buffer",   max_item_count = 20, keyword_length = 5 },
                                { name = "path" },
                        }),
                        experimental = {
                                ghost_text = true,
                        }

                })
        end


}
