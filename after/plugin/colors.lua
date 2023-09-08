function ColorMyPencils(color)
        color=color or
        --"rose-pine"
        "catppuccin-mocha"
        --"deus"
        --"solarized"
        vim.cmd.colorscheme(color)
        vim.api.nvim_set_hl(0,"NormalFloat",{bg="none"})

end


ColorMyPencils()

