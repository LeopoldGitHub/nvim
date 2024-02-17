return {
        "nvim-lualine/lualine.nvim",
        dependencies = { { "nvim-tree/nvim-web-devicons", opt = true } },

        config = function()
                require("lualine").setup({
                        options = {
                                --                        theme ="tokyonight",
                                theme = "catppuccin-mocha",
                        },
                        tabline = {
                                lualine_a = { 'mode' },
                                lualine_b = { 'os.date("%d/%m/%y")' },
                                lualine_c = { 'branch', 'diff', 'diagnostics' },
                                lualine_d = { 'filename' },
                                lualine_x = { 'encoding', 'fileformat', 'filetype' },
                                lualine_y = { 'progress' },
                                lualine_z = { 'os.date("%H:%M")' }
                        },
                        sections = {}
                })
                vim.opt.laststatus = 0
        end
}
