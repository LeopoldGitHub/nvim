return {
        "leoluz/nvim-dap-go",

        ft = { "go" },
        dependencies = {
                "mfussenegger/nvim-dap",
        },
        config = function()
                require("dap-go").setup({
                        vim.keymap.set("n", "<leader>db", function() require("dap").toggle_breakpoint() end,
                                { desc = "Toggle Breakpoint" }),
                        vim.keymap.set("n", "<leader>dc", function() require("dap").continue() end, { desc = "Continue" }),
                        vim.keymap.set("n", "<leader>do", function() require("dap").step_over() end,
                                { desc = "Step Over" }),
                        vim.keymap.set("n", "<leader>di", function() require("dap").step_into() end,
                                { desc = "Step Into" }),
                        vim.keymap.set("n", "<leader>dO", function() require("dap").step_out() end, { desc = "Step Out" }),
                        vim.keymap.set("n", "<leader>dus", function()
                                local widgets = require("dap.ui.widgets");
                                local sidebar = widgets.sidebar(widgets.scopes);
                                sidebar.open();
                        end, { desc = "Open sidebar" }),

                })
        end
}
