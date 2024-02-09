return {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
                "williamboman/mason.nvim",
                "neovim/nvim-lspconfig",
        },
        config = function()
                require("mason").setup()
                require("mason-lspconfig").setup({
<<<<<<< HEAD
                        ensure_installed = { "lua_ls", "tsserver",
=======
                        ensure_installed = { "lua_ls"
>>>>>>> e4b09083b65f8c55a2892d042f0704a27fe332bb
                        }
                })
                require("mason-lspconfig").setup_handlers {
                        function(server_name)
                                require("lspconfig")[server_name].setup {}
                        end
                }
        end


}
