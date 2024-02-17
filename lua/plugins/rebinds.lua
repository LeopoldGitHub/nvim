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
--Resize splits with arrow keys
vim.keymap.set({ "n", "v" }, "<C-up>", ":res +5<CR>")
vim.keymap.set({ "n", "v" }, "<C-down>", ":res -5<CR>")
vim.keymap.set({ "n", "v" }, "<C-left>", ":vertical resize -5<CR>")
vim.keymap.set({ "n", "v" }, "<C-right>", ":vertical resize +5<CR>")

vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(ev)
                -- Enable completion triggered by <c-x><c-o>
                vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
                -- Buffer local mappings.
                local opts = { buffer = ev.buf }
                vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
                vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
                vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
                vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
                vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
                vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
                vim.keymap.set('n', '<space>wl', function()
                        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
                end, opts)
                vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
                vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
                vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
                vim.keymap.set('n', '<space>f', function()
                        vim.lsp.buf.format { async = true }
                end, opts)
        end,
})

return {}
