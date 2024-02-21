return {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim',
                'nvim-telescope/telescope-ui-select.nvim',
        },

        config = function()
                local builtin = require('telescope.builtin')
                require("telescope").setup {
                        extensions = {
                                ["ui-select"] = {
                                        require("telescope.themes").get_dropdown {}
                                }
                        }
                }
                pcall(require('telescope').load_extension, 'fzf')
                require("telescope").load_extension("ui-select")
                vim.keymap.set('n', '<leader>tf', builtin.find_files, {})
                vim.keymap.set('n', '<leader>tg', builtin.git_files, {})


                vim.keymap.set('n', '<leader>ts', function()
                        local word = vim.fn.expand("<cWORD>")
                        builtin.grep_string({ search = word })
                end)
                vim.keymap.set('n', '<leader>tsw', function()
                        local word = vim.fn.expand("<cword>")
                        builtin.grep_string({ search = word })
                end)
                vim.keymap.set('n', '<leader>tsg', function()
                        builtin.grep_string({ search = vim.fn.input("Grep > ") });
                end)
                vim.keymap.set('n', '<leader>th', builtin.help_tags, {})
        end
}
