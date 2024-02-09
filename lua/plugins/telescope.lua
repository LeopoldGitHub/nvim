return {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
                local builtin = require('telescope.builtin')
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
                vim.keymap.set('n','<leader>th',builtin.help_tags,{})

        end
}
