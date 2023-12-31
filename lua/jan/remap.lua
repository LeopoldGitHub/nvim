vim.g.mapleader = " "
vim.keymap.set("v", "K", ":m ´<-2<CR>gv=gv")
vim.keymap.set("n", "<leader>gv", vim.cmd.Ex)
vim.g.mapleader = " "
vim.keymap.set("v", "J", ":m ´>+1<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-e>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "q", "nzzzv")
vim.keymap.set("n", "Q", "Nzzzv")

-- overite selected text with  clipboard and keep current in it
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
-- add ctr+s to save while in insert mode
vim.keymap.set("i", "WW", "<Esc>:w<CR>")
