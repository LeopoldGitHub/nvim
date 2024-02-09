return {
        "tpope/vim-fugitive",
        config = function()
                vim.keymap.set("n","<leader>ft",vim.cmd.Git)
        end
}
