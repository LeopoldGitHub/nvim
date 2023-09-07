vim.g.mapleader = " "
vim.keymap.set("n", "<leader>gv", vim.cmd.Ex)

-- Basic Mappings

vim.keymap.set("n",";",":")
vim.keymap.set("n","Q",":q<CR>")
vim.keymap.set("n","S",":q<CR>")

-- Undo
vim.keymap.set("n","l","u")

-- Insert Key
vim.keymap.set("n","k","i")
vim.keymap.set("n","K","I")

-- Copy to system clipboard
--

-- Cursor Movement
--

vim.keymap.set("n","u","k")
vim.keymap.set("n","n","h")
vim.keymap.set("n","e","j")
vim.keymap.set("n","i","l")
vim.keymap.set("n","gu","gk")
vim.keymap.set("n","ge","gj")
vim.keymap.set("n","U","5k")
vim.keymap.set("n","E","5j")
vim.keymap.set("v","u","k")
vim.keymap.set("v","n","h")
vim.keymap.set("v","N","5h")
vim.keymap.set("v","e","j")
vim.keymap.set("v","e","j")
vim.keymap.set("v","i","l")
vim.keymap.set("v","I","5l")
vim.keymap.set("v","U","5k")
vim.keymap.set("v","E","5j")
vim.keymap.set("n","N","0")
vim.keymap.set("n","I","$")
vim.keymap.set("n","w","b")
vim.keymap.set("n","W","5b")
vim.keymap.set("n","b","w")
vim.keymap.set("n","B","5w")
vim.keymap.set("v","w","b")
vim.keymap.set("v","W","5b")
vim.keymap.set("v","b","w")
vim.keymap.set("v","B","5w")
vim.keymap.set("v","k","I")
vim.keymap.set("n","h","e")
vim.keymap.set("n","<C-U>","5<C-y>")
vim.keymap.set("n","<C-E>","5<C-e>")
