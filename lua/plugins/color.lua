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
                                harpoon = false,
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
                local links = {
                        ['@lsp.type.namespace'] = '@namespace',
                        ['@lsp.type.type'] = '@type',
                        ['@lsp.type.class'] = '@type',
                        ['@lsp.type.enum'] = '@type',
                        ['@lsp.type.interface'] = '@type',
                        ['@lsp.type.struct'] = '@structure',
                        ['@lsp.type.parameter'] = '@parameter',
                        ['@lsp.type.variable'] = '@variable',
                        ['@lsp.type.property'] = '@property',
                        ['@lsp.type.enumMember'] = '@constant',
                        ['@lsp.type.function'] = '@function',
                        ['@lsp.type.method'] = '@method',
                        ['@lsp.type.macro'] = '@macro',
                        ['@lsp.type.decorator'] = '@function',
                        ['@lsp.typemod.namespace'] = '@namespace',
                        ['@lsp.typemod.type'] = '@type',
                        ['@lsp.typemod.class'] = '@type',
                        ['@lsp.typemod.enum'] = '@type',
                        ['@lsp.typemod.interface'] = '@type',
                        ['@lsp.typemod.struct'] = '@structure',
                        ['@lsp.typemod.parameter'] = '@parameter',
                        ['@lsp.typemod.variable'] = '@variable',
                        ['@lsp.typemod.property'] = '@property',
                        ['@lsp.typemod.enumMember'] = '@constant',
                        ['@lsp.typemod.function'] = '@function',
                        ['@lsp.typemod.method'] = '@method',
                        ['@lsp.typemod.macro'] = '@macro',
                        ['@lsp.typemod.method.defaultLibrary.rust'] = '@function',
                        ['@lsp.typemod.macro.defaultLibrary.rust'] = '@function.macro',
                        ['@lsp.typemod.macro.library.rust'] = '@function.macro',
                        ['@lsp.typemod.decorator'] = '@function',

                }
                for newgroup, oldgroup in pairs(links) do
                        vim.api.nvim_set_hl(0, newgroup, { link = oldgroup, default = true })
                end
        end


}
