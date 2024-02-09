return {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
                "williamboman/mason.nvim",
                "neovim/nvim-lspconfig",
        },
        config = function()
                require("mason").setup()
                require("mason-lspconfig").setup({
                        ensure_installed = { "lua_ls", "rust_analyzer", "tsserver", "bashls"
                        , "omnisharp", "gopls", "gradle_ls", "jqls", "powershell_es", "pyre",
                                "sqlls", "yamlls"
                        }
                })
                require("mason-lspconfig").setup_handlers {
                        function(server_name)
                                require("lspconfig")[server_name].setup {}
                        end
                }
        end


}
