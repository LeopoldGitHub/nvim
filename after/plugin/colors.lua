function ColorMyPencils(color)
        color = color or
            --  "tokyonight-night"
            --"rose-pine"
            "catppuccin-mocha"
        --   "catppuccin-macchiato"
        --"deus"
        --"solarized"
        vim.cmd.colorscheme(color)
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
