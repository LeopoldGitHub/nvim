return {
        'ThePrimeagen/harpoon',
        dependencies = {
                'nvim-lua/plenary.nvim'
        },
        config = function()
                local mark = require("harpoon.mark")
                local ui = require("harpoon.ui")
                vim.keymap.set("n","<leader>a",mark.add_file)
                --vim.keymap.set("n","<C-i>",ui.toggle_quick_menu)
                vim.keymap.set("n","<C-m>",function() ui.nav_file(1) end)
                vim.keymap.set("n","<C-k>",function() ui.nav_file(2) end)
                vim.keymap.set("n","<C-h>",function() ui.nav_file(3) end)
                require("telescope").load_extension('harpoon')
                vim.keymap.set("n","<C-i>",function() vim.cmd('Telescope harpoon marks') end)
        end
}
