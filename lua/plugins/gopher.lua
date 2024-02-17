return {
        "olexsmir/gopher.nvim",
        ft = { "go", "gomod" },
        dependencies = { "nvim-lua/plenary.nvim",
                "nvim-treesitter/nvim-treesitter", },
        config = function()
                require("gopher").setup({
                        vim.keymap.set("n", "<leader>gta", "<cmd>GoTagAdd json<cr>"),
                })
        end,
        build = function()
                vim.cmd [[silent! GoInstallDeps]]
        end,
}
