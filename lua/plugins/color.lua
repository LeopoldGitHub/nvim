return
{
        "catppuccin/nvim",
        lazy = false,
        name = "catppuccin",
        priority = 1000,
        config = function()
                local catppuccin = require("catppuccin")

                catppuccin.setup({
                        flavour = "mocha",
                        integrations = {
                                rainbow_delimiters = true,
                                semantic_tokens = true,
                                cmp = true,
                                treesitter = true,
                                harpoon= false,
                                telescope = {
                                        enabled = true,
                                },
                                native_lsp = {
                                        enabled = true,
                                        virtual_text = {
                                                errors = { "italic" },
                                                hints = { "italic" },
                                                warnings = { "italic" },
                                                information = { "italic" },
                                        },
                                        underlines = {
                                                errors = { "underline" },
                                                hints = { "underline" },
                                                warnings = { "underline" },
                                                information = { "underline" },
                                        },
                                        inlay_hints = {
                                                background = true,
                                        },
                                },
                        },
                })

                vim.cmd.colorscheme "catppuccin"
        end


}
