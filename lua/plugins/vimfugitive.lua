return {
        "tpope/vim-fugitive",
        config = function()
                vim.keymap.set("n","<leader>gf",vim.cmd.Git)
                vim.keymap.set("n","<leader>gc",":Git commit")
        end
}
