vim.g.mapleader = " "
vim.keymap.set("n", "<leader>gv", vim.cmd.Ex)
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("v", "K", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "J", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-e>", "<C-d>zz")
vim.keymap.set("n", "q", "nzzzv")
vim.keymap.set("n", "Q", "Nzzzv")

-- overite selected text with  clipboard and keep current in it
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- add ctr+s to save while in insert mode
vim.keymap.set("i", "WW", "<Esc>:w<CR>")
-- insert curly braces and jump into them
vim.keymap.set("i", "<c-y>", "<ESC>A {}<ESC>i<CR><ESC>ko")

--switch w and b
vim.keymap.set({ "n", "v" }, "w", "b")
vim.keymap.set({ "n", "v" }, "b", "w")
vim.keymap.set({ "n", "v" }, "W", "5b")
vim.keymap.set({ "n", "v" }, "B", "5w")

vim.keymap.set({ "n", "v" }, "j", "h")
vim.keymap.set({ "n", "v" }, "h", "j")
vim.keymap.set({ "n", "v" }, "H", "5jzz")
vim.keymap.set({ "n", "v" }, "K", "5kzz")
return {}
