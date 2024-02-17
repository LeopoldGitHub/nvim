return {
        "tpope/vim-fugitive",
        keys= { "<leader>gf", "<cmd>Git<cr>" },
        config = function()
                vim.keymap.set("n","<leader>gf",vim.cmd.Git)
        end
}
